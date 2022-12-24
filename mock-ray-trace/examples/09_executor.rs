/// Asynchronous Programming in Rust - Zack Jorquera
/// https://www.section.io/engineering-education/asynchronous-programming-in-rust/)

use std::future::Future;
use std::pin::Pin;
use std::{thread, time};
use std::task::{Context, Poll, Waker};
use std::sync::{Arc, Mutex};

extern crate rand;


fn main() {

    println!("sync: Took {} secs",do_work_sync());
    println!("async: Took {} secs",do_work_async());
}

fn do_work_sync() -> u64
{
    // let's time it
    let now = time::Instant::now();

    let v1 = get_num_sync();
    let v2 = get_num_sync();
    println!("sync: {} {}", v1, v2);

    return now.elapsed().as_secs();
}

fn do_work_async() -> u64
{
    let now = time::Instant::now();

    // create tasks
    let task_vec = vec![get_num_async(), get_num_async()];

    // block on Executor::run
    let ret = my_executor::Executor::run(task_vec);
    let v1 = ret[0];
    let v2 = ret[1];
    
    println!("async: {} {}", v1, v2);

    return now.elapsed().as_secs();
}

fn get_num_sync() -> i32
{
    let s = MySocket::new();
    
    // busy wait until data is ready to be read
    // will take 2 seconds
    while !s.has_data_to_read() {}

    return s.read_data()
}

async fn get_num_async() -> i32
{
    FutSocket::new().await
    // same as FutSocket::new() if not async
}

/* what implements Future */
struct FutSocket
{
    inner: MySocket
}

impl FutSocket
{
    // will start the timer thread
    fn new() -> Self
    {
        let inner = MySocket::new();
        
        FutSocket {inner}
    }
}

impl Future for FutSocket
{
    type Output = i32;

    fn poll(self: Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Self::Output> 
    {
    
        // In Rust, if the last line in a scope (i.e. the if statement) does 
        // not have a semicolon then it is being used as return. 
        if self.inner.has_data_to_read()
        {
            Poll::Ready(self.inner.read_data())
        }
        else
        {
            // Set waker so that the inner MySocket can wake up the
            // current task when the 2 sec timer has completed.
            self.inner.set_readable_callback(cx.waker().clone());
            Poll::Pending
        }
    }
}

struct MySocket
{
    // Arc Mutex is just a reference counted mutex
    inner_shr: Arc<Mutex<InnerMySocker>>
}

impl MySocket
{
    // will start the timer thread
    fn new() -> Self
    {
        let inner = InnerMySocker{data: None, readable_waker: None};
        let inner_shr = Arc::new(Mutex::new(inner));

        
        let this_inner_shr = inner_shr.clone();
        thread::spawn(move ||
        {
            // Our function is just a sleep and a return i32
            
            // It is in another thread to try and emulate interfacing with the OS
            // you can imagine that the OS will do all of the following for us when
            // we call `has_data_to_read`, `read_data`, and `set_readable_callback`.

            thread::sleep(time::Duration::from_secs(2));

            let mut inner = this_inner_shr.lock().unwrap();
            
            inner.data = Some(rand::random::<i32>());

            // if rust this is a patter match where we set readable_waker to be
            // None after we access it
            if let Some(w) = inner.readable_waker.take()
            {
                w.wake()
            }
        });
        
        // Now that we started the thread we can return the MySocket.
        // In Rust, if the last line does not have a semicolon then it is
        // being used as return. 
        MySocket {inner_shr}
    }

    fn has_data_to_read(&self) -> bool
    {
        // inner_shr is in a mutex so we need to get the lock to edit it
        let inner = self.inner_shr.lock().unwrap();

        // instead of using a bool for data exists we will use an option
        inner.data.is_some()
    }
    
    fn read_data(&self) -> i32
    {
        let inner = self.inner_shr.lock().unwrap();
        inner.data.unwrap()
    }

    #[allow(dead_code)]
    fn set_readable_callback(&self, waker: Waker)
    {
        let mut inner = self.inner_shr.lock().unwrap();
        // There's not much to this, we just set the waker
        inner.readable_waker = Some(waker);
    }
}

struct InnerMySocker
{
    data: Option<i32>,
    // We use a Option instead of useing null like we would in C
    readable_waker: Option<Waker>
}


// contains code for the toy executor
mod my_executor
{
    use std::future::Future;
    use std::task::{Context, Poll};

    extern crate futures;

    use futures::{
            future::{FutureExt, BoxFuture},
            task::{ArcWake, waker_ref},
        };
    use std::sync::mpsc::{sync_channel, SyncSender, Receiver};
    use std::sync::{Arc, Mutex};


    pub struct Executor {
        ready_queue: Receiver<usize>,
        task_sender: Option<SyncSender<usize>>,
    }

    // Task is how the executor manages the `wake()` function (or the context)
    // for each future using a sync channel
    struct Task {
        future_id: usize,
        // Handle to place the future_id back onto the task queue.
        task_sender: SyncSender<usize>,
    }

    impl ArcWake for Task {
        // the `wake()` function adds the tasks future_id back to the 'queue'
        // to that is can try to make progress again.
        fn wake_by_ref(arc_self: &Arc<Self>) 
        {
            arc_self.task_sender.send(arc_self.future_id).expect("too many tasks queued");
        }
    }

    impl Executor {
        // we don't want people to create a task. They should use `run(...)`.
        // That is why this in not public.
        fn new() -> Self
        {
            const MAX_QUEUED_TASKS: usize = 10_000;
            let (task_sender, ready_queue) = sync_channel(MAX_QUEUED_TASKS);
            Executor { task_sender: Some(task_sender), ready_queue }
        }

        // will create and run the Executor
        pub fn run(mut fut_vec: Vec<impl Future<Output = i32> + 'static + Send>) -> Vec<i32>
        {
            let mut this_exec = Self::new();
            
            // let fut_vec: Vec<Mutex<BoxFuture<'static, i32>>> = fut_vec.iter().map(|f| Mutex::new(f.boxed())).collect();
            // we cant use map because map uses references and not moves. We have to use a loop with pop (it sucks)
            let mut bfut_vec: Vec<Mutex<BoxFuture<'static, i32>>> = Vec::new();
            while let Some(f) = fut_vec.pop()
            {
                bfut_vec.push(Mutex::new(f.boxed()));
            }
            
            // we want to create a task for each fut in bfut_vec and added it
            // to the 'queue'. We puth to the queue with `task_sender` and pop
            // with `ready_queue`.
            let mut task_vec: Vec<Option<Arc<Task>>> = Vec::new();
            if let Some(ref ts) = this_exec.task_sender // might make more sense to use `unwrap()`
            {
                task_vec = (0..bfut_vec.len()).map(|i| {
                    // This is a rust lambda function
                    let this_ts = ts.clone();
                    this_ts.send(i).expect("too many tasks queued");
                    Some(Arc::new(Task{future_id: i, task_sender: this_ts}))
                }).collect();
            }
            this_exec.task_sender = None;
            // Now the only active senders are in the tasks.

            let mut ret: Vec<i32> = vec![0;bfut_vec.len()];

            // Sort of like while !all_done() as recv will only return Err if there
            // are no active senders. Otherwise it will just block.
            // If we get a fut from recv then we know it can make progress.
            while let Ok(future_id) = this_exec.ready_queue.recv()
            {
                // If the task has not finished. This isn't really needed
                // as finished tasks shouldn't be in the ready_queue.
                if let Some(ref task) = task_vec[future_id]
                {
                    let mut future = bfut_vec[future_id].lock().unwrap();
                    let waker = waker_ref(task);

                    // The waker task just adds its future_id back into the loop
                    let context = &mut Context::from_waker(&*waker);
                    
                    if let Poll::Ready(d) = future.as_mut().poll(context)
                    {
                        // We're done processing the future, so grab the data
                        // and put it in the return vec. Also remove the task.
                        ret[future_id] = d;
                        task_vec[future_id] = None; // you got to love NLL
                    }
                }
            }
            return ret;
        }
    }
}
