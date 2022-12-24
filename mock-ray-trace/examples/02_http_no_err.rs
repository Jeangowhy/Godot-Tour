#[tokio::main]
async fn fake_main() {
    let fact = get_cat_fact_async().await;
    println!("[async] fact = {:#?}", fact);
}

/// blocking and async runtime can't  coexisting operation or cause error:
/// Cannot drop a runtime in a context where blocking is not allowed. 
/// This happens when a runtime is dropped from within an asynchronous context.
fn main() {
    let fact = get_cat_fact();
    println!("[sync ] fact = {:#?}", fact);
    fake_main();
}

async fn get_cat_fact_async() -> Result<String, Box<dyn std::error::Error>> {
    let client = reqwest::Client::new();
    let body = client.get("https://catfact.ninja/fact").send()
        .await?
        .text()
        .await?;

    Ok(body)
}

fn get_cat_fact() -> Result<String, Box<dyn std::error::Error>> {
    let body = reqwest::blocking::get("https://catfact.ninja/fact")?.text()?;

    Ok(body)
}