# Contents 🔆🔅

 🟡🟠 Getting Started
 ⚡ Installation
 ⚡ Cargo Tool
 ⚡ Windows Resource(ICO) 
 ⚡ mdBook 电子书框架
 ⚡ Packages Crates Modules
 ⚡ HelloWorld🔆🔅
 ⚡ Printing 打印信息
 ⚡ Guessing Game
 ⚡ Basic Concepts & Data Types
 🟢🔵 Comments & Doc
 🟢🔵 Variables and Mutability 变量与可变性
 🟢🔵 Data Types 基本数据类型
 🟢🔵 Type Conversions 类型转换
 🟢🔵 Control Flow 流程控制
 ⚡ Features 特色概念
 🟢🔵 Zero-cost Abstraction 零成本抽象
 🟢🔵 Ownership 所有权
 🟢🔵 Borrowing 借用所有权
 🟢🔵 Slices 切片类型与所有权
 ⚡ Lifetime 生命周期
 🟢🔵 Function & Lifetimes
 🟢🔵 Temporary & Lifetimes elision
 🟢🔵 Lifetime Bound Syntax
 🟢🔵 Static 静态生命周期
 🟢🔵 Struct 与生命周期
 🟢🔵 Trait 与生命周期
 ⚡ Functional OOP 函数式面向对象编程
 🟢🔵 Functions 函数
 🟢🔵 FOOP 函数式面向对象编程
 🟢🔵 Traits & Polymorphism
 🟢🔵 Dynamic vs Static Dispatch
 🟢🔵 Blog Demo
 🟢🔵 Traits 特质扩展
 🟢🔵 Drop & Copy Trait
 🟢🔵 Operator Overloading
 🟢🔵 Iterator 迭代器
 🟢🔵 Generic Types
 ⚡ Patterns & Match 模式匹配
 ⚡ Enums 枚举类型
 ⚡ Structures 结构体
 ⚡ Union 联合体
 ⚡ Error Handling 错误处理
 🟢🔵 Panics Option Result
 🟢🔵 Unpacking & Propagating Errors with ?
 🟢🔵 Panic Hook
 🟢🔵 Error Message
 ⚡ Collections 集合
 🟢🔵 Vec 向量列表
 🟢🔵 String 字符串列表
 🟢🔵 VecDeque
 🟢🔵 LinkedList
 🟢🔵 HashMap
 🟢🔵 BTreeMap
 🟢🔵 HashSet BTreeSet
 🟢🔵 BinaryHeap
 ⚡ Smart Pointers
 ⚡ Box - heap allocation
 ⚡ owning_ref 占用引用
 ⚡ I/O & Command Line
 🟢🔵 CLI Arguments
 🟢🔵 Shell 命令执行
 🟢🔵 CLAP 命令行参数解析器
 🟢🔵 Files 文件读写
 🟡🟠 Memory Layout 内存模型
 🟡🟠 Advanced Features
 ⚡ Unsafe Rust 
 ⚡ FFI - Foreign Function Interface
 ⚡ Type Layout
 ⚡ Advanced traits
 ⚡ Advanced types
 ⚡ Closures 闭包
 🟢🔵 Closures Lifetime
 🟢🔵 Closures Type Anonymity
 ⚡ Macros 宏
 🟡🟠 Reflection
 🟡🟠 Test 自动测试
 🟡🟠 Asynchronous 异步编程
 🟡🟠 Fearless Concurrency
 ⚡ 基本多线程程序
 ⚡ Synchronization 同步对象
 ⚡ Message Passing 消息传递
 ⚡ Shared State 共享状态 
 ⚡ Send & Sync traits
 🟡🟠 Multithreaded Web Server
 ⚡ Thread Pool 线程池实现
 🟡🟠 Game
 🟡🟠 OpenCV in Rust
 🟡🟠 Compilers Principles
 🟡🟠 Structure and Interpretation of Computer Programs, SICP
 🟡🟠 rustc-serialize
 🟡🟠 webview_sys
 🟡🟠 Ruffle SWF Player
 🟡🟠 Rust Reference
 ⚡ Primitive Types
 ⚡ Modules
 ⚡ Macros
 ⚡ Keywords
 ⚡ Operators and Symbols
 ⚡ Struct TypeId & Trait Any
 ⚡ Struct Cell
 ⚡ Struct Vec
 ⚡ Trait Iterator
 ⚡ std::fs
 ⚡ Range Expressions



如果要查看本身 HTML 文档，使用 rustup docs 命令打开相应的文档页面：

```sh
    > rustup docs --help
    rustup.exe-doc
    Open the documentation for the current toolchain

    USAGE:
        rustup.exe doc [FLAGS] [OPTIONS] [topic]

    FLAGS:
            --alloc              The Rust core allocation and collections library
            --book               The Rust Programming Language book
            --cargo              The Cargo Book
            --core               The Rust Core Library
            --edition-guide      The Rust Edition Guide
            --embedded-book      The Embedded Rust Book
        -h, --help               Prints help information
            --nomicon            The Dark Arts of Advanced and Unsafe Rust Programming
            --path               Only print the path to the documentation
            --proc_macro         A support library for macro authors when defining new macros
            --reference          The Rust Reference
            --rust-by-example    A collection of runnable examples that illustrate various Rust concepts and standard
                                 libraries
            --rustc              The compiler for the Rust programming language
            --rustdoc            Generate documentation for Rust projects
            --std                Standard library API documentation
            --test               Support code for rustc's built in unit-test and micro-benchmarking framework
            --unstable-book      The Unstable Book 
```

为了方便在文档之间快速跳转，推荐在 Sublime Text 环境下阅读文档，只需要安装 run-snippet 插件，
使用 F9 快捷键跳转到光标下的文件或链接。

快速安装 RunSnippet 插件：

- Ctrl+Shift+P 打开 Sublime Text 命令调板；
- 执行 Add Repository 添加本插件代码仓库地址: https://github.com/jimboyeah/run-snippet
- 然后执行 Install Package 并输入 RunSnippt 进行确认安装；

手动添加 Repository，执行菜单： Perferences 🡒 Package Settings 🡒 Package Control 🡒 Settings

    "repositories":
    [
        "https://github.com/jimboyeah/run-snippet",
    ],

可以在 Packages 目录执行以下命令安装 RunSnippet 插件：

    git clone git@github.com/jimboyeah/run-snippet.git

添加配置文件，默认启用分组跳转，如果 Sublime Text 没有设置分组，则在当前 View 弹出文件跳转窗口，
这种行为有点打断思路。更合理的做法是 GUI 设置 2 个 Group，并且在另一个 Group 弹出文件 Panel。
Load settings from /Packages/Users/RunSnippet.sublime-settings

```json
    {
        "jump_between_group": true,
    }
```

本文档内容主要参考以下官方资源展开，安装 Rust 后，直接可以使用 rustup doc 命令打开本地文档：

- The Rust Programming Language
- Asynchronous Programming in Rust
- Rust By Example
- The Rust Reference
- The Reference
- The Rustonomicon
- The Unstable Book
- The rustc Contribution Guide
- The Edition Guide
- The Rustc Book
- The Cargo Book
- The Rustdoc Book
- The Embedded Rust Book
- Guide to Rustc Development
- The Rust RFC Book

Rust 官方文档包含在标准库源代码仓库中，并作为子模块引用，可以单独克隆下载：

```sh
    git clone --depth=1 git@github.com:rust-lang/rust
    git submodule update --init --depth=1 --recursive

    git clone --depth=1 git@github.com:rust-lang/nomicon         src/doc/nomicon
    git clone --depth=1 git@github.com:rust-lang/reference       src/doc/reference
    git clone --depth=1 git@github.com:rust-lang/book            src/doc/book
    git clone --depth=1 git@github.com:rust-lang/rust-by-example src/doc/rust-by-example
    git clone --depth=1 git@github.com:rust-lang/rustc-dev-guide src/doc/rustc-dev-guide
    git clone --depth=1 git@github.com:rust-lang/edition-guide   src/doc/edition-guide
    git clone --depth=1 git@github.com:rust-embedded/book        src/doc/embedded-book

    git clone --depth=1 git@github.com:rust-lang/rfcs            src/doc/rfcs
    git clone --depth=1 git@github.com:rust-lang/cargo           src/tools/cargo
    git clone --depth=1 git@github.com:rust-lang/async-book      src/doc/async-book
    git clone --depth=1 git@github.com:rustwasm/wasm-bindgen     src/doc/wasm-bindgen
    git clone --depth=1 git@github.com:bytecodealliance/wasmtime src/doc/wasmtime

    # The Little Book of Rust Macros
    git clone --depth=1 git@github.com:DanielKeep/tlborm         src/doc/macros_little
    git clone --depth=1 git@github.com:veykril/tlborm            src/doc/macros_little2

```

## 🟢🔵The Rust Programming Language

[Foreword](book/src/foreword.md)
[Introduction](ch00-00-introduction.md)

## Getting started

- [Getting Started](ch01-00-getting-started.md)
    - [Installation](ch01-01-installation.md)
    - [Hello, World!](ch01-02-hello-world.md)
    - [Hello, Cargo!](ch01-03-hello-cargo.md)

- [Programming a Guessing Game](ch02-00-guessing-game-tutorial.md)

- [Common Programming Concepts](ch03-00-common-programming-concepts.md)
    - [Variables and Mutability](ch03-01-variables-and-mutability.md)
    - [Data Types](ch03-02-data-types.md)
    - [How Functions Work](ch03-03-how-functions-work.md)
    - [Comments](ch03-04-comments.md)
    - [Control Flow](ch03-05-control-flow.md)

- [Understanding Ownership](ch04-00-understanding-ownership.md)
    - [What is Ownership?](ch04-01-what-is-ownership.md)
    - [References & Borrowing](ch04-02-references-and-borrowing.md)
    - [Slices](ch04-03-slices.md)

- [Using Structs to Structure Related Data](ch05-00-structs.md)
    - [Defining and Instantiating Structs](ch05-01-defining-structs.md)
    - [An Example Program Using Structs](ch05-02-example-structs.md)
    - [Method Syntax](ch05-03-method-syntax.md)

- [Enums and Pattern Matching](ch06-00-enums.md)
    - [Defining an Enum](ch06-01-defining-an-enum.md)
    - [The `match` Control Flow Operator](ch06-02-match.md)
    - [Concise Control Flow with `if let`](ch06-03-if-let.md)

## Basic Rust Literacy

- [Packages, Crates, and Modules](ch07-00-packages-crates-and-modules.md)
    - [Packages and crates for making libraries and executables](ch07-01-packages-and-crates-for-making-libraries-and-executables.md)
    - [Modules and `use` to control scope and privacy](ch07-02-modules-and-use-to-control-scope-and-privacy.md)

- [Common Collections](ch08-00-common-collections.md)
    - [Vectors](ch08-01-vectors.md)
    - [Strings](ch08-02-strings.md)
    - [Hash Maps](ch08-03-hash-maps.md)

- [Error Handling](ch09-00-error-handling.md)
    - [Unrecoverable Errors with `panic!`](ch09-01-unrecoverable-errors-with-panic.md)
    - [Recoverable Errors with `Result`](ch09-02-recoverable-errors-with-result.md)
    - [To `panic!` or Not to `panic!`](ch09-03-to-panic-or-not-to-panic.md)

- [Generic Types, Traits, and Lifetimes](ch10-00-generics.md)
    - [Generic Data Types](ch10-01-syntax.md)
    - [Traits: Defining Shared Behavior](ch10-02-traits.md)
    - [Validating References with Lifetimes](ch10-03-lifetime-syntax.md)

- [Testing](ch11-00-testing.md)
    - [Writing tests](ch11-01-writing-tests.md)
    - [Running tests](ch11-02-running-tests.md)
    - [Test Organization](ch11-03-test-organization.md)

- [An I/O Project: Building a Command Line Program](ch12-00-an-io-project.md)
    - [Accepting Command Line Arguments](ch12-01-accepting-command-line-arguments.md)
    - [Reading a File](ch12-02-reading-a-file.md)
    - [Refactoring to Improve Modularity and Error Handling](ch12-03-improving-error-handling-and-modularity.md)
    - [Developing the Library’s Functionality with Test Driven Development](ch12-04-testing-the-librarys-functionality.md)
    - [Working with Environment Variables](ch12-05-working-with-environment-variables.md)
    - [Writing Error Messages to Standard Error Instead of Standard Output](ch12-06-writing-to-stderr-instead-of-stdout.md)

## Thinking in Rust

- [Functional Language Features: Iterators and Closures](ch13-00-functional-features.md)
    - [Closures: Anonymous Functions that Can Capture Their Environment](ch13-01-closures.md)
    - [Processing a Series of Items with Iterators](ch13-02-iterators.md)
    - [Improving Our I/O Project](ch13-03-improving-our-io-project.md)
    - [Comparing Performance: Loops vs. Iterators](ch13-04-performance.md)

- [More about Cargo and Crates.io](ch14-00-more-about-cargo.md)
    - [Customizing Builds with Release Profiles](ch14-01-release-profiles.md)
    - [Publishing a Crate to Crates.io](ch14-02-publishing-to-crates-io.md)
    - [Cargo Workspaces](ch14-03-cargo-workspaces.md)
    - [Installing Binaries from Crates.io with `cargo install`](ch14-04-installing-binaries.md)
    - [Extending Cargo with Custom Commands](ch14-05-extending-cargo.md)

- [Smart Pointers](ch15-00-smart-pointers.md)
    - [`Box<T>` Points to Data on the Heap and Has a Known Size](ch15-01-box.md)
    - [The `Deref` Trait Allows Access to the Data Through a Reference](ch15-02-deref.md)
    - [The `Drop` Trait Runs Code on Cleanup](ch15-03-drop.md)
    - [`Rc<T>`, the Reference Counted Smart Pointer](ch15-04-rc.md)
    - [`RefCell<T>` and the Interior Mutability Pattern](ch15-05-interior-mutability.md)
    - [Creating Reference Cycles and Leaking Memory is Safe](ch15-06-reference-cycles.md)

- [Fearless Concurrency](ch16-00-concurrency.md)
    - [Threads](ch16-01-threads.md)
    - [Message Passing](ch16-02-message-passing.md)
    - [Shared State](ch16-03-shared-state.md)
    - [Extensible Concurrency: `Sync` and `Send`](ch16-04-extensible-concurrency-sync-and-send.md)

- [Object Oriented Programming Features of Rust](ch17-00-oop.md)
    - [Characteristics of Object-Oriented Languages](ch17-01-what-is-oo.md)
    - [Using Trait Objects that Allow for Values of Different Types](ch17-02-trait-objects.md)
    - [Implementing an Object-Oriented Design Pattern](ch17-03-oo-design-patterns.md)

## Advanced Topics

- [Patterns Match the Structure of Values](ch18-00-patterns.md)
    - [All the Places Patterns May be Used](ch18-01-all-the-places-for-patterns.md)
    - [Refutability: Whether a Pattern Might Fail to Match](ch18-02-refutability.md)
    - [All the Pattern Syntax](ch18-03-pattern-syntax.md)

- [Advanced Features](ch19-00-advanced-features.md)
    - [Unsafe Rust](ch19-01-unsafe-rust.md)
    - [Advanced Lifetimes](ch19-02-advanced-lifetimes.md)
    - [Advanced Traits](ch19-03-advanced-traits.md)
    - [Advanced Types](ch19-04-advanced-types.md)
    - [Advanced Functions & Closures](ch19-05-advanced-functions-and-closures.md)
    - [Macros](ch19-06-macros.md)

- [Final Project: Building a Multithreaded Web Server](ch20-00-final-project-a-web-server.md)
    - [A Single Threaded Web Server](ch20-01-single-threaded.md)
    - [Turning our Single Threaded Server into a Multithreaded Server](ch20-02-multithreaded.md)
    - [Graceful Shutdown and Cleanup](ch20-03-graceful-shutdown-and-cleanup.md)

- [Appendix](appendix-00.md)
    - [A - Keywords](appendix-01-keywords.md)
    - [B - Operators and Symbols](appendix-02-operators.md)
    - [C - Derivable Traits](appendix-03-derivable-traits.md)
    - [D - Useful Development Tools](appendix-04-useful-development-tools.md)
    - [E - Editions](appendix-05-editions.md)
    - [F - Translations](appendix-06-translation.md)
    - [G - How Rust is Made and “Nightly Rust”](appendix-07-nightly-rust.md)


## 🟢🔵The Rustdoc Book

- [What is rustdoc?](rustdoc/src/what-is-rustdoc.md)
- [How to write documentation](rustdoc/src/how-to-write-documentation.md)
- [What to include (and exclude)](rustdoc/src/what-to-include.md)
- [Command-line arguments](rustdoc/src/command-line-arguments.md)
- [The `#[doc]` attribute](rustdoc/src/the-doc-attribute.md)
- [Documentation tests](rustdoc/src/documentation-tests.md)
- [Linking to items by name](rustdoc/src/linking-to-items-by-name.md)
- [Lints](rustdoc/src/lints.md)
- [Passes](rustdoc/src/passes.md)
- [Advanced features](rustdoc/src/advanced-features.md)
- [Unstable features](rustdoc/src/unstable-features.md)
- [References](rustdoc/src/references.md)


## 🟢🔵Rust By Example

[Introduction](rust-by-example/src/index.md)

- [Hello World](rust-by-example/src/hello.md)
    - [Comments](rust-by-example/src/hello/comment.md)
    - [Formatted print](rust-by-example/src/hello/print.md)
        - [Debug](rust-by-example/src/hello/print/print_debug.md)
        - [Display](rust-by-example/src/hello/print/print_display.md)
            - [Testcase: List](rust-by-example/src/hello/print/print_display/testcase_list.md)
        - [Formatting](rust-by-example/src/hello/print/fmt.md)

- [Primitives](rust-by-example/src/primitives.md)
    - [Literals and operators](rust-by-example/src/primitives/literals.md)
    - [Tuples](rust-by-example/src/primitives/tuples.md)
    - [Arrays and Slices](rust-by-example/src/primitives/array.md)

- [Custom Types](rust-by-example/src/custom_types.md)
    - [Structures](rust-by-example/src/custom_types/structs.md)
    - [Enums](rust-by-example/src/custom_types/enum.md)
        - [use](rust-by-example/src/custom_types/enum/enum_use.md)
        - [C-like](rust-by-example/src/custom_types/enum/c_like.md)
        - [Testcase: linked-list](rust-by-example/src/custom_types/enum/testcase_linked_list.md)
    - [constants](rust-by-example/src/custom_types/constants.md)

- [Variable Bindings](rust-by-example/src/variable_bindings.md)
    - [Mutability](rust-by-example/src/variable_bindings/mut.md)
    - [Scope and Shadowing](rust-by-example/src/variable_bindings/scope.md)
    - [Declare first](rust-by-example/src/variable_bindings/declare.md)
    - [Freezing](rust-by-example/src/variable_bindings/freeze.md)

- [Types](rust-by-example/src/types.md)
    - [Casting](rust-by-example/src/types/cast.md)
    - [Literals](rust-by-example/src/types/literals.md)
    - [Inference](rust-by-example/src/types/inference.md)
    - [Aliasing](rust-by-example/src/types/alias.md)

- [Conversion](rust-by-example/src/conversion.md)
    - [`From` and `Into`](rust-by-example/src/conversion/from_into.md)
    - [`TryFrom` and `TryInto`](rust-by-example/src/conversion/try_from_try_into.md)
    - [To and from `String`s](rust-by-example/src/conversion/string.md)

- [Expressions](rust-by-example/src/expression.md)

- [Flow of Control](rust-by-example/src/flow_control.md)
    - [if/else](rust-by-example/src/flow_control/if_else.md)
    - [loop](rust-by-example/src/flow_control/loop.md)
        - [Nesting and labels](rust-by-example/src/flow_control/loop/nested.md)
        - [Returning from loops](rust-by-example/src/flow_control/loop/return.md)
    - [while](rust-by-example/src/flow_control/while.md)
    - [for and range](rust-by-example/src/flow_control/for.md)
    - [match](rust-by-example/src/flow_control/match.md)
        - [Destructuring](rust-by-example/src/flow_control/match/destructuring.md)
            - [tuples](rust-by-example/src/flow_control/match/destructuring/destructure_tuple.md)
            - [arrays/slices](rust-by-example/src/flow_control/match/destructuring/destructure_slice.md)
            - [enums](rust-by-example/src/flow_control/match/destructuring/destructure_enum.md)
            - [pointers/ref](rust-by-example/src/flow_control/match/destructuring/destructure_pointers.md)
            - [structs](rust-by-example/src/flow_control/match/destructuring/destructure_structures.md)
        - [Guards](rust-by-example/src/flow_control/match/guard.md)
        - [Binding](rust-by-example/src/flow_control/match/binding.md)
    - [if let](rust-by-example/src/flow_control/if_let.md)
    - [let-else](rust-by-example/src/flow_control/let_else.md)
    - [while let](rust-by-example/src/flow_control/while_let.md)

- [Functions](rust-by-example/src/fn.md)
    - [Methods](rust-by-example/src/fn/methods.md)
    - [Closures](rust-by-example/src/fn/closures.md)
        - [Capturing](rust-by-example/src/fn/closures/capture.md)
        - [As input parameters](rust-by-example/src/fn/closures/input_parameters.md)
        - [Type anonymity](rust-by-example/src/fn/closures/anonymity.md)
        - [Input functions](rust-by-example/src/fn/closures/input_functions.md)
        - [As output parameters](rust-by-example/src/fn/closures/output_parameters.md)
        - [Examples in `std`](rust-by-example/src/fn/closures/closure_examples.md)
            - [Iterator::any](rust-by-example/src/fn/closures/closure_examples/iter_any.md)
            - [Searching through iterators](rust-by-example/src/fn/closures/closure_examples/iter_find.md)
    - [Higher Order Functions](rust-by-example/src/fn/hof.md)
    - [Diverging functions](rust-by-example/src/fn/diverging.md)

- [Modules](rust-by-example/src/mod.md)
    - [Visibility](rust-by-example/src/mod/visibility.md)
    - [Struct visibility](rust-by-example/src/mod/struct_visibility.md)
    - [The `use` declaration](rust-by-example/src/mod/use.md)
    - [`super` and `self`](rust-by-example/src/mod/super.md)
    - [File hierarchy](rust-by-example/src/mod/split.md)

- [Crates](rust-by-example/src/crates.md)
    - [Creating a Library](rust-by-example/src/crates/lib.md)
    - [Using a Library](rust-by-example/src/crates/using_lib.md)

- [Cargo](rust-by-example/src/cargo.md)
    - [Dependencies](rust-by-example/src/cargo/deps.md)
    - [Conventions](rust-by-example/src/cargo/conventions.md)
    - [Tests](rust-by-example/src/cargo/test.md)
    - [Build Scripts](rust-by-example/src/cargo/build_scripts.md)

- [Attributes](rust-by-example/src/attribute.md)
    - [`dead_code`](rust-by-example/src/attribute/unused.md)
    - [Crates](rust-by-example/src/attribute/crate.md)
    - [`cfg`](rust-by-example/src/attribute/cfg.md)
        - [Custom](rust-by-example/src/attribute/cfg/custom.md)

- [Generics](rust-by-example/src/generics.md)
    - [Functions](rust-by-example/src/generics/gen_fn.md)
    - [Implementation](rust-by-example/src/generics/impl.md)
    - [Traits](rust-by-example/src/generics/gen_trait.md)
    - [Bounds](rust-by-example/src/generics/bounds.md)
        - [Testcase: empty bounds](rust-by-example/src/generics/bounds/testcase_empty.md)
    - [Multiple bounds](rust-by-example/src/generics/multi_bounds.md)
    - [Where clauses](rust-by-example/src/generics/where.md)
    - [New Type Idiom](rust-by-example/src/generics/new_types.md)
    - [Associated items](rust-by-example/src/generics/assoc_items.md)
        - [The Problem](rust-by-example/src/generics/assoc_items/the_problem.md)
        - [Associated types](rust-by-example/src/generics/assoc_items/types.md)
    - [Phantom type parameters](rust-by-example/src/generics/phantom.md)
        - [Testcase: unit clarification](rust-by-example/src/generics/phantom/testcase_units.md)

- [Scoping rules](rust-by-example/src/scope.md)
    - [RAII](rust-by-example/src/scope/raii.md)
    - [Ownership and moves](rust-by-example/src/scope/move.md)
        - [Mutability](rust-by-example/src/scope/move/mut.md)
        - [Partial moves](rust-by-example/src/scope/move/partial_move.md)
    - [Borrowing](rust-by-example/src/scope/borrow.md)
        - [Mutability](rust-by-example/src/scope/borrow/mut.md)
        - [Aliasing](rust-by-example/src/scope/borrow/alias.md)
        - [The ref pattern](rust-by-example/src/scope/borrow/ref.md)
    - [Lifetimes](rust-by-example/src/scope/lifetime.md)
        - [Explicit annotation](rust-by-example/src/scope/lifetime/explicit.md)
        - [Functions](rust-by-example/src/scope/lifetime/fn.md)
        - [Methods](rust-by-example/src/scope/lifetime/methods.md)
        - [Structs](rust-by-example/src/scope/lifetime/struct.md)
        - [Traits](rust-by-example/src/scope/lifetime/trait.md)
        - [Bounds](rust-by-example/src/scope/lifetime/lifetime_bounds.md)
        - [Coercion](rust-by-example/src/scope/lifetime/lifetime_coercion.md)
        - [Static](rust-by-example/src/scope/lifetime/static_lifetime.md)
        - [Elision](rust-by-example/src/scope/lifetime/elision.md)

- [Traits](rust-by-example/src/trait.md)
    - [Derive](rust-by-example/src/trait/derive.md)
    - [Returning Traits with `dyn`](rust-by-example/src/trait/dyn.md)
    - [Operator Overloading](rust-by-example/src/trait/ops.md)
    - [Drop](rust-by-example/src/trait/drop.md)
    - [Iterators](rust-by-example/src/trait/iter.md)
    - [`impl Trait`](rust-by-example/src/trait/impl_trait.md)
    - [Clone](rust-by-example/src/trait/clone.md)
    - [Supertraits](rust-by-example/src/trait/supertraits.md)
    - [Disambiguating overlapping traits](rust-by-example/src/trait/disambiguating.md)

- [macro_rules!](rust-by-example/src/macros.md)
    - [Syntax](rust-by-example/src/macros/syntax.md)
        - [Designators](rust-by-example/src/macros/designators.md)
        - [Overload](rust-by-example/src/macros/overload.md)
        - [Repeat](rust-by-example/src/macros/repeat.md)
    - [DRY (Don't Repeat Yourself)](rust-by-example/src/macros/dry.md)
    - [DSL (Domain Specific Languages)](rust-by-example/src/macros/dsl.md)
    - [Variadics](rust-by-example/src/macros/variadics.md)

- [Error handling](rust-by-example/src/error.md)
    - [`panic`](rust-by-example/src/error/panic.md)
    - [`abort` & `unwind`](rust-by-example/src/error/abort_unwind.md)
    - [`Option` & `unwrap`](rust-by-example/src/error/option_unwrap.md)
        - [Unpacking options with `?`](rust-by-example/src/error/option_unwrap/question_mark.md)
        - [Combinators: `map`](rust-by-example/src/error/option_unwrap/map.md)
        - [Combinators: `and_then`](rust-by-example/src/error/option_unwrap/and_then.md)
        - [Defaults: `or`, `or_else`, `get_or_insert`, `get_or_insert_with`](rust-by-example/src/error/option_unwrap/defaults.md)
    - [`Result`](rust-by-example/src/error/result.md)
        - [`map` for `Result`](rust-by-example/src/error/result/result_map.md)
        - [aliases for `Result`](rust-by-example/src/error/result/result_alias.md)
        - [Early returns](rust-by-example/src/error/result/early_returns.md)
        - [Introducing `?`](rust-by-example/src/error/result/enter_question_mark.md)
    - [Multiple error types](rust-by-example/src/error/multiple_error_types.md)
        - [Pulling `Result`s out of `Option`s](rust-by-example/src/error/multiple_error_types/option_result.md)
        - [Defining an error type](rust-by-example/src/error/multiple_error_types/define_error_type.md)
        - [`Box`ing errors](rust-by-example/src/error/multiple_error_types/boxing_errors.md)
        - [Other uses of `?`](rust-by-example/src/error/multiple_error_types/reenter_question_mark.md)
        - [Wrapping errors](rust-by-example/src/error/multiple_error_types/wrap_error.md)
    - [Iterating over `Result`s](rust-by-example/src/error/iter_result.md)

- [Std library types](rust-by-example/src/std.md)
    - [Box, stack and heap](rust-by-example/src/std/box.md)
    - [Vectors](rust-by-example/src/std/vec.md)
    - [Strings](rust-by-example/src/std/str.md)
    - [`Option`](rust-by-example/src/std/option.md)
    - [`Result`](rust-by-example/src/std/result.md)
        - [`?`](rust-by-example/src/std/result/question_mark.md)
    - [`panic!`](rust-by-example/src/std/panic.md)
    - [HashMap](rust-by-example/src/std/hash.md)
        - [Alternate/custom key types](rust-by-example/src/std/hash/alt_key_types.md)
        - [HashSet](rust-by-example/src/std/hash/hashset.md)
    - [`Rc`](rust-by-example/src/std/rc.md)
    - [`Arc`](rust-by-example/src/std/arc.md)

- [Std misc](rust-by-example/src/std_misc.md)
    - [Threads](rust-by-example/src/std_misc/threads.md)
        - [Testcase: map-reduce](rust-by-example/src/std_misc/threads/testcase_mapreduce.md)
    - [Channels](rust-by-example/src/std_misc/channels.md)
    - [Path](rust-by-example/src/std_misc/path.md)
    - [File I/O](rust-by-example/src/std_misc/file.md)
        - [`open`](rust-by-example/src/std_misc/file/open.md)
        - [`create`](rust-by-example/src/std_misc/file/create.md)
        - [`read lines`](rust-by-example/src/std_misc/file/read_lines.md)
    - [Child processes](rust-by-example/src/std_misc/process.md)
        - [Pipes](rust-by-example/src/std_misc/process/pipe.md)
        - [Wait](rust-by-example/src/std_misc/process/wait.md)
    - [Filesystem Operations](rust-by-example/src/std_misc/fs.md)
    - [Program arguments](rust-by-example/src/std_misc/arg.md)
        - [Argument parsing](rust-by-example/src/std_misc/arg/matching.md)
    - [Foreign Function Interface](rust-by-example/src/std_misc/ffi.md)

- [Testing](rust-by-example/src/testing.md)
    - [Unit testing](rust-by-example/src/testing/unit_testing.md)
    - [Documentation testing](rust-by-example/src/testing/doc_testing.md)
    - [Integration testing](rust-by-example/src/testing/integration_testing.md)
    - [Dev-dependencies](rust-by-example/src/testing/dev_dependencies.md)

- [Unsafe Operations](rust-by-example/src/unsafe.md)
    - [Inline assembly](rust-by-example/src/unsafe/asm.md)

- [Compatibility](rust-by-example/src/compatibility.md)
    - [Raw identifiers](rust-by-example/src/compatibility/raw_identifiers.md)

- [Meta](rust-by-example/src/meta.md)
    - [Documentation](rust-by-example/src/meta/doc.md)
    - [Playground](rust-by-example/src/meta/playground.md)


## 🟢🔵Asynchronous Programming in Rust

- [Getting Started](async-book/src/01_getting_started/01_chapter.md)
  - [Why Async?](async-book/src/01_getting_started/02_why_async.md)
  - [The State of Asynchronous Rust](async-book/src/01_getting_started/03_state_of_async_rust.md)
  - [`async`/`.await` Primer](async-book/src/01_getting_started/04_async_await_primer.md)
- [Under the Hood: Executing `Future`s and Tasks](async-book/src/02_execution/01_chapter.md)
  - [The `Future` Trait](async-book/src/02_execution/02_future.md)
  - [Task Wakeups with `Waker`](async-book/src/02_execution/03_wakeups.md)
  - [Applied: Build an Executor](async-book/src/02_execution/04_executor.md)
  - [Executors and System IO](async-book/src/02_execution/05_io.md)
- [`async`/`await`](async-book/src/03_async_await/01_chapter.md)
- [Pinning](async-book/src/04_pinning/01_chapter.md)
- [Streams](async-book/src/05_streams/01_chapter.md)
  - [Iteration and Concurrency](async-book/src/05_streams/02_iteration_and_concurrency.md)
- [Executing Multiple Futures at a Time](async-book/src/06_multiple_futures/01_chapter.md)
  - [`join!`](async-book/src/06_multiple_futures/02_join.md)
  - [`select!`](async-book/src/06_multiple_futures/03_select.md)
  - [TODO: Spawning](async-book/src/)
  - [TODO: Cancellation and Timeouts](async-book/src/)
  - [TODO: `FuturesUnordered`](async-book/src/)
- [Workarounds to Know and Love](async-book/src/07_workarounds/01_chapter.md)
  - [`?` in `async` Blocks](async-book/src/07_workarounds/02_err_in_async_blocks.md)
  - [`Send` Approximation](async-book/src/07_workarounds/03_send_approximation.md)
  - [Recursion](async-book/src/07_workarounds/04_recursion.md)
  - [`async` in Traits](async-book/src/07_workarounds/05_async_in_traits.md)
- [The Async Ecosystem](async-book/src/08_ecosystem/00_chapter.md)
- [Final Project: HTTP Server](async-book/src/09_example/00_intro.md)
  - [Running Asynchronous Code](async-book/src/09_example/01_running_async_code.md)
  - [Handling Connections Concurrently](async-book/src/09_example/02_handling_connections_concurrently.md)
  - [Testing the Server](async-book/src/09_example/03_tests.md)
- [TODO: I/O](async-book/src/)
  - [TODO: `AsyncRead` and `AsyncWrite`](async-book/src/)
- [TODO: Asynchronous Design Patterns: Solutions and Suggestions](async-book/src/)
  - [TODO: Modeling Servers and the Request/Response Pattern](async-book/src/)
  - [TODO: Managing Shared State](async-book/src/)
- [Appendix: Translations of the Book](async-book/src/12_appendix/01_translations.md)



## 🟢🔵The Little Book of Rust Macros


* [Macros, A Methodical Introduction](macros_little/text/mbe-README.md)
    * [Syntax Extensions](macros_little/text/mbe-syn-README.md)
        * [Source Analysis](macros_little/text/mbe-syn-source-analysis.md)
        * [Macros in the AST](macros_little/text/mbe-syn-macros-in-the-ast.md)
        * [Expansion](macros_little/text/mbe-syn-expansion.md)
    * [macro_rules!](macros_little/text/mbe-macro-rules.md)
    * [Minutiae](macros_little/text/mbe-min-README.md)
        * [Captures and Expansion Redux](macros_little/text/mbe-min-captures-and-expansion-redux.md)
        * [Hygiene](macros_little/text/mbe-min-hygiene.md)
        * [Non-Identifier Identifiers](macros_little/text/mbe-min-non-identifier-identifiers.md)
        * [Debugging](macros_little/text/mbe-min-debugging.md)
        * [Scoping](macros_little/text/mbe-min-scoping.md)
        * [Import/Export](macros_little/text/mbe-min-import-export.md)
* [Macros, A Practical Introduction](macros_little/text/pim-README.md)
* [Patterns](macros_little/text/pat-README.md)
    * [Callbacks](macros_little/text/pat-callbacks.md)
    * [Incremental TT Munchers](macros_little/text/pat-incremental-tt-munchers.md)
    * [Internal Rules](macros_little/text/pat-internal-rules.md)
    * [Push-Down Accumulation](macros_little/text/pat-push-down-accumulation.md)
    * [Repetition Replacement](macros_little/text/pat-repetition-replacement.md)
    * [Trailing Separators](macros_little/text/pat-trailing-separators.md)
    * [TT Bundling](macros_little/text/pat-tt-bundling.md)
    * [Visibility](macros_little/text/pat-visibility.md)
    * [Provisional](macros_little/text/pat-provisional.md)
* [Building Blocks](macros_little/text/blk-README.md)
    * [AST Coercion](macros_little/text/blk-ast-coercion.md)
    * [Counting](macros_little/text/blk-counting.md)
    * [Enum Parsing](macros_little/text/blk-enum-parsing.md)
* [Annotated Examples](macros_little/text/aeg-README.md)
    * [Ook!](macros_little/text/aeg-ook.md)


## 🟢🔵The Little Book of Rust Macros 2

[Introduction](macros_little2/src/introduction.md)

- [Syntax Extensions](macros_little2/src/syntax-extensions.md)
    - [Source Analysis](macros_little2/src/syntax-extensions/source-analysis.md)
    - [Macros in the Ast](macros_little2/src/syntax-extensions/ast.md)
    - [Expansion](macros_little2/src/syntax-extensions/expansion.md)
    - [Hygiene](macros_little2/src/syntax-extensions/hygiene.md)
    - [Debugging](macros_little2/src/syntax-extensions/debugging.md)
- [Declarative Macros](macros_little2/src/decl-macros.md)
    - [A Methodical Introduction](macros_little2/src/decl-macros/macros-methodical.md)
    - [A Practical Introduction](macros_little2/src/decl-macros/macros-practical.md)
    - [Minutiae](macros_little2/src/decl-macros/minutiae.md)
        - [Fragment Specifiers](macros_little2/src/decl-macros/minutiae/fragment-specifiers.md)
        - [Metavariables and Expansion Redux](macros_little2/src/decl-macros/minutiae/metavar-and-expansion.md)
        - [Metavariable Expressions](macros_little2/src/decl-macros/minutiae/metavar-expr.md)
        - [Hygiene](macros_little2/src/decl-macros/minutiae/hygiene.md)
        - [Non-Identifier Identifiers](macros_little2/src/decl-macros/minutiae/identifiers.md)
        - [Debugging](macros_little2/src/decl-macros/minutiae/debugging.md)
        - [Scoping](macros_little2/src/decl-macros/minutiae/scoping.md)
        - [Import and Export](macros_little2/src/decl-macros/minutiae/import-export.md)
    - [Patterns](macros_little2/src/decl-macros/patterns.md)
        - [Callbacks](macros_little2/src/decl-macros/patterns/callbacks.md)
        - [Incremental TT Munchers](macros_little2/src/decl-macros/patterns/tt-muncher.md)
        - [Internal Rules](macros_little2/src/decl-macros/patterns/internal-rules.md)
        - [Push-down Accumulation](macros_little2/src/decl-macros/patterns/push-down-acc.md)
        - [Repetition Replacement](macros_little2/src/decl-macros/patterns/repetition-replacement.md)
        - [TT Bundling](macros_little2/src/decl-macros/patterns/tt-bundling.md)
    - [Building Blocks](macros_little2/src/decl-macros/building-blocks.md)
        - [AST Coercion](macros_little2/src/decl-macros/building-blocks/ast-coercion.md)
        - [Counting](macros_little2/src/decl-macros/building-blocks/counting.md)
            - [Abacus Counting](macros_little2/src/decl-macros/building-blocks/abacus-counting.md)
        - [Parsing Rust](macros_little2/src/decl-macros/building-blocks/parsing.md)
    - [Macros 2.0](macros_little2/src/decl-macros/macros2.md)
 - [Procedural Macros](macros_little2/src/proc-macros.md)
    - [A Methodical Introduction](macros_little2/src/proc-macros/methodical.md)
        - [Function-like](macros_little2/src/proc-macros/methodical/function-like.md)
        - [Attribute](macros_little2/src/proc-macros/methodical/attr.md)
        - [Derive](macros_little2/src/proc-macros/methodical/derive.md)
    - [A Practical Introduction](macros_little2/src/proc-macros/practical.md)
        - [Function-like](macros_little2/src/proc-macros/practical/function-like.md)
        - [Attribute](macros_little2/src/proc-macros/practical/attr.md)
        - [Derive](macros_little2/src/proc-macros/practical/derive.md)
    - [Third-Party Crates](macros_little2/src/proc-macros/third-party-crates.md)
    - [Hygiene and Spans](macros_little2/src/proc-macros/hygiene.md)
    - [Techniques](macros_little2/src/proc-macros/techniques.md)
        - [Testing](macros_little2/src/proc-macros/techniques/testing.md)

 [Glossary](macros_little2/src/glossary.md)



## 🟢🔵The Rust Edition Guide

[Introduction](edition-guide/src/introduction.md)

## What are editions?

- [What are editions?](edition-guide/src/editions/index.md)
  - [Creating a new project](edition-guide/src/editions/creating-a-new-project.md)
  - [Transitioning an existing project to a new edition](edition-guide/src/editions/transitioning-an-existing-project-to-a-new-edition.md)
  - [Advanced migrations](edition-guide/src/editions/advanced-migrations.md)

## Rust 2015

- [Rust 2015](edition-guide/src/rust-2015/index.md)

## Rust 2018

- [Rust 2018](edition-guide/src/rust-2018/index.md)
  - [Path and module system changes](edition-guide/src/rust-2018/path-changes.md)
  - [Anonymous trait function parameters deprecated](edition-guide/src/rust-2018/trait-fn-parameters.md)
  - [New keywords](edition-guide/src/rust-2018/new-keywords.md)
  - [Method dispatch for raw pointers to inference variables](edition-guide/src/rust-2018/tyvar-behind-raw-pointer.md)
  - [Cargo changes](edition-guide/src/rust-2018/cargo.md)

## Rust 2021

- [Rust 2021](edition-guide/src/rust-2021/index.md)
  - [Additions to the prelude](edition-guide/src/rust-2021/prelude.md)
  - [Default Cargo feature resolver](edition-guide/src/rust-2021/default-cargo-resolver.md)
  - [IntoIterator for arrays](edition-guide/src/rust-2021/IntoIterator-for-arrays.md)
  - [Disjoint capture in closures](edition-guide/src/rust-2021/disjoint-capture-in-closures.md)
  - [Panic macro consistency](edition-guide/src/rust-2021/panic-macro-consistency.md)
  - [Reserving syntax](edition-guide/src/rust-2021/reserving-syntax.md)
  - [Warnings promoted to errors](edition-guide/src/rust-2021/warnings-promoted-to-error.md)
  - [Or patterns in macro-rules](edition-guide/src/rust-2021/or-patterns-macro-rules.md)



## 🟢🔵The Cargo Book

[Introduction](cargo/src/index.md)

* [Getting Started](cargo/src/getting-started/index.md)
    * [Installation](cargo/src/getting-started/installation.md)
    * [First Steps with Cargo](cargo/src/getting-started/first-steps.md)

* [Cargo Guide](cargo/src/guide/index.md)
    * [Why Cargo Exists](cargo/src/guide/why-cargo-exists.md)
    * [Creating a New Package](cargo/src/guide/creating-a-new-project.md)
    * [Working on an Existing Package](cargo/src/guide/working-on-an-existing-project.md)
    * [Dependencies](cargo/src/guide/dependencies.md)
    * [Package Layout](cargo/src/guide/project-layout.md)
    * [Cargo.toml vs Cargo.lock](cargo/src/guide/cargo-toml-vs-cargo-lock.md)
    * [Tests](cargo/src/guide/tests.md)
    * [Continuous Integration](cargo/src/guide/continuous-integration.md)
    * [Cargo Home](cargo/src/guide/cargo-home.md)
    * [Build Cache](cargo/src/guide/build-cache.md)

* [Cargo Reference](cargo/src/reference/index.md)
    * [Specifying Dependencies](cargo/src/reference/specifying-dependencies.md)
        * [Overriding Dependencies](cargo/src/reference/overriding-dependencies.md)
    * [The Manifest Format](cargo/src/reference/manifest.md)
        * [Cargo Targets](cargo/src/reference/cargo-targets.md)
    * [Workspaces](cargo/src/reference/workspaces.md)
    * [Features](cargo/src/reference/features.md)
        * [Features Examples](cargo/src/reference/features-examples.md)
    * [Profiles](cargo/src/reference/profiles.md)
    * [Configuration](cargo/src/reference/config.md)
    * [Environment Variables](cargo/src/reference/environment-variables.md)
    * [Build Scripts](cargo/src/reference/build-scripts.md)
        * [Build Script Examples](cargo/src/reference/build-script-examples.md)
    * [Publishing on crates.io](cargo/src/reference/publishing.md)
    * [Package ID Specifications](cargo/src/reference/pkgid-spec.md)
    * [Source Replacement](cargo/src/reference/source-replacement.md)
    * [External Tools](cargo/src/reference/external-tools.md)
    * [Registries](cargo/src/reference/registries.md)
    * [Dependency Resolution](cargo/src/reference/resolver.md)
    * [SemVer Compatibility](cargo/src/reference/semver.md)
    * [Future incompat report](cargo/src/reference/future-incompat-report.md)
    * [Reporting build timings](cargo/src/reference/timings.md)
    * [Unstable Features](cargo/src/reference/unstable.md)

* [Cargo Commands](cargo/src/commands/index.md)
    * [General Commands](cargo/src/commands/general-commands.md)
        * [cargo](cargo/src/commands/cargo.md)
        * [cargo help](cargo/src/commands/cargo-help.md)
        * [cargo version](cargo/src/commands/cargo-version.md)
    * [Build Commands](cargo/src/commands/build-commands.md)
        * [cargo bench](cargo/src/commands/cargo-bench.md)
        * [cargo build](cargo/src/commands/cargo-build.md)
        * [cargo check](cargo/src/commands/cargo-check.md)
        * [cargo clean](cargo/src/commands/cargo-clean.md)
        * [cargo doc](cargo/src/commands/cargo-doc.md)
        * [cargo fetch](cargo/src/commands/cargo-fetch.md)
        * [cargo fix](cargo/src/commands/cargo-fix.md)
        * [cargo run](cargo/src/commands/cargo-run.md)
        * [cargo rustc](cargo/src/commands/cargo-rustc.md)
        * [cargo rustdoc](cargo/src/commands/cargo-rustdoc.md)
        * [cargo test](cargo/src/commands/cargo-test.md)
        * [cargo report](cargo/src/commands/cargo-report.md)
    * [Manifest Commands](cargo/src/commands/manifest-commands.md)
        * [cargo add](cargo/src/commands/cargo-add.md)
        * [cargo generate-lockfile](cargo/src/commands/cargo-generate-lockfile.md)
        * [cargo locate-project](cargo/src/commands/cargo-locate-project.md)
        * [cargo metadata](cargo/src/commands/cargo-metadata.md)
        * [cargo pkgid](cargo/src/commands/cargo-pkgid.md)
        * [cargo remove](cargo/src/commands/cargo-remove.md)
        * [cargo tree](cargo/src/commands/cargo-tree.md)
        * [cargo update](cargo/src/commands/cargo-update.md)
        * [cargo vendor](cargo/src/commands/cargo-vendor.md)
        * [cargo verify-project](cargo/src/commands/cargo-verify-project.md)
    * [Package Commands](cargo/src/commands/package-commands.md)
        * [cargo init](cargo/src/commands/cargo-init.md)
        * [cargo install](cargo/src/commands/cargo-install.md)
        * [cargo new](cargo/src/commands/cargo-new.md)
        * [cargo search](cargo/src/commands/cargo-search.md)
        * [cargo uninstall](cargo/src/commands/cargo-uninstall.md)
    * [Publishing Commands](cargo/src/commands/publishing-commands.md)
        * [cargo login](cargo/src/commands/cargo-login.md)
        * [cargo owner](cargo/src/commands/cargo-owner.md)
        * [cargo package](cargo/src/commands/cargo-package.md)
        * [cargo publish](cargo/src/commands/cargo-publish.md)
        * [cargo yank](cargo/src/commands/cargo-yank.md)

* [FAQ](cargo/src/faq.md)
* [Appendix: Glossary](cargo/src/appendix/glossary.md)
* [Appendix: Git Authentication](cargo/src/appendix/git-authentication.md)




## 🟢🔵The Rustc Book


- [What is rustc?](rustc/src/what-is-rustc.md)
- [Command-line arguments](rustc/src/command-line-arguments.md)
- [Lints](rustc/src/lints/index.md)
    - [Lint levels](rustc/src/lints/levels.md)
    - [Lint Groups](rustc/src/lints/groups.md)
    - [Lint listing](rustc/src/lints/listing/index.md)
        - [Allowed-by-default lints](rustc/src/lints/listing/allowed-by-default.md)
        - [Warn-by-default lints](rustc/src/lints/listing/warn-by-default.md)
        - [Deny-by-default lints](rustc/src/lints/listing/deny-by-default.md)
- [Codegen options](rustc/src/codegen-options/index.md)
- [JSON Output](rustc/src/json.md)
- [Platform Support](rustc/src/platform-support.md)
- [Targets](rustc/src/targets/index.md)
    - [Built-in Targets](rustc/src/targets/built-in.md)
    - [Custom Targets](rustc/src/targets/custom.md)
    - [Known Issues](rustc/src/targets/known-issues.md)
- [Profile-guided Optimization](rustc/src/profile-guided-optimization.md)
- [Linker-plugin based LTO](rustc/src/linker-plugin-lto.md)
- [Exploit Mitigations](rustc/src/exploit-mitigations.md)
- [Contributing to `rustc`](rustc/src/contributing.md)


## 🟢🔵Guide to Rustc Development

[About this guide](rustc-dev-guide/src/about-this-guide.md)

[Getting Started](rustc-dev-guide/src/getting-started.md)

---

## Building and debugging `rustc`

- [How to Build and Run the Compiler](rustc-dev-guide/src/building/how-to-build-and-run.md)
    - [Prerequisites](rustc-dev-guide/src/building/prerequisites.md)
    - [Suggested Workflows](rustc-dev-guide/src/building/suggested.md)
    - [Distribution artifacts](rustc-dev-guide/src/building/build-install-distribution-artifacts.md)
    - [Building Documentation](rustc-dev-guide/src/building/compiler-documenting.md)
    - [Rustdoc overview](rustc-dev-guide/src/rustdoc.md)
    - [Adding a new target](rustc-dev-guide/src/building/new-target.md)
- [Testing the compiler](rustc-dev-guide/src/tests/intro.md)
    - [Running tests](rustc-dev-guide/src/tests/running.md)
        - [Testing with Docker](rustc-dev-guide/src/tests/docker.md)
        - [Testing with CI](rustc-dev-guide/src/tests/ci.md)
    - [Adding new tests](rustc-dev-guide/src/tests/adding.md)
    - [Compiletest](rustc-dev-guide/src/tests/compiletest.md)
        - [UI tests](rustc-dev-guide/src/tests/ui.md)
        - [Test headers](rustc-dev-guide/src/tests/headers.md)
    - [Performance testing](rustc-dev-guide/src/tests/perf.md)
    - [Crater](rustc-dev-guide/src/tests/crater.md)
- [Debugging the Compiler](rustc-dev-guide/src/compiler-debugging.md)
    - [Using the tracing/logging instrumentation](rustc-dev-guide/src/tracing.md)
- [Profiling the compiler](rustc-dev-guide/src/profiling.md)
    - [with the linux perf tool](rustc-dev-guide/src/profiling/with_perf.md)
    - [with Windows Performance Analyzer](rustc-dev-guide/src/profiling/wpa_profiling.md)
- [crates.io Dependencies](rustc-dev-guide/src/crates-io.md)


## Contributing to Rust

- [Introduction](rustc-dev-guide/src/contributing.md)
- [About the compiler team](rustc-dev-guide/src/compiler-team.md)
- [Using Git](rustc-dev-guide/src/git.md)
- [Mastering @rustbot](rustc-dev-guide/src/rustbot.md)
- [Walkthrough: a typical contribution](rustc-dev-guide/src/walkthrough.md)
- [Bug Fix Procedure](rustc-dev-guide/src/bug-fix-procedure.md)
- [Implementing new features](rustc-dev-guide/src/implementing_new_features.md)
- [Stability attributes](rustc-dev-guide/src/stability.md)
- [Stabilizing Features](rustc-dev-guide/src/stabilization_guide.md)
- [Feature Gates](rustc-dev-guide/src/feature-gates.md)
- [Coding conventions](rustc-dev-guide/src/conventions.md)
- [Notification groups](notification-groups/about.md)
    - [ARM](notification-groups/arm.md)
    - [Cleanup Crew](notification-groups/cleanup-crew.md)
    - [LLVM](notification-groups/llvm.md)
    - [RISC-V](notification-groups/risc-v.md)
    - [Windows](notification-groups/windows.md)
- [Licenses](rustc-dev-guide/src/licenses.md)

## High-level Compiler Architecture

- [Prologue](rustc-dev-guide/src/part-2-intro.md)
- [Overview of the Compiler](rustc-dev-guide/src/overview.md)
- [The compiler source code](rustc-dev-guide/src/compiler-src.md)
- [Bootstrapping](rustc-dev-guide/src/building/bootstrapping.md)
- [Queries: demand-driven compilation](rustc-dev-guide/src/query.md)
    - [The Query Evaluation Model in Detail](rustc-dev-guide/src/queries/query-evaluation-model-in-detail.md)
    - [Incremental compilation](rustc-dev-guide/src/queries/incremental-compilation.md)
    - [Incremental compilation In Detail](rustc-dev-guide/src/queries/incremental-compilation-in-detail.md)
    - [Debugging and Testing](rustc-dev-guide/src/incrcomp-debugging.md)
    - [Salsa](rustc-dev-guide/src/salsa.md)
- [Memory Management in Rustc](rustc-dev-guide/src/memory.md)
- [Serialization in Rustc](rustc-dev-guide/src/serialization.md)
- [Parallel Compilation](rustc-dev-guide/src/parallel-rustc.md)
- [Rustdoc internals](rustc-dev-guide/src/rustdoc-internals.md)

## Source Code Representation

- [Prologue](rustc-dev-guide/src/part-3-intro.md)
- [Command-line arguments](rustc-dev-guide/src/cli.md)
- [The Rustc Driver and Interface](rustc-dev-guide/src/rustc-driver.md)
    - [Example: Type checking](rustc-dev-guide/src/rustc-driver-interacting-with-the-ast.md)
    - [Example: Getting diagnostics](rustc-dev-guide/src/rustc-driver-getting-diagnostics.md)
- [Syntax and the AST](rustc-dev-guide/src/syntax-intro.md)
    - [Lexing and Parsing](rustc-dev-guide/src/the-parser.md)
    - [Macro expansion](rustc-dev-guide/src/macro-expansion.md)
    - [Name resolution](rustc-dev-guide/src/name-resolution.md)
    - [`#[test]` Implementation](rustc-dev-guide/src/test-implementation.md)
    - [Panic Implementation](rustc-dev-guide/src/panic-implementation.md)
    - [AST Validation](rustc-dev-guide/src/ast-validation.md)
    - [Feature Gate Checking](rustc-dev-guide/src/feature-gate-ck.md)
    - [Lang Items](rustc-dev-guide/src/lang-items.md)
- [The HIR (High-level IR)](rustc-dev-guide/src/hir.md)
    - [Lowering AST to HIR](rustc-dev-guide/src/lowering.md)
    - [Debugging](rustc-dev-guide/src/hir-debugging.md)
- [The THIR (Typed High-level IR)](rustc-dev-guide/src/thir.md)
- [The MIR (Mid-level IR)](rustc-dev-guide/src/mir/index.md)
    - [MIR construction](rustc-dev-guide/src/mir/construction.md)
    - [MIR visitor and traversal](rustc-dev-guide/src/mir/visitor.md)
    - [MIR passes: getting the MIR for a function](rustc-dev-guide/src/mir/passes.md)
- [Identifiers in the Compiler](rustc-dev-guide/src/identifiers.md)
- [Closure expansion](rustc-dev-guide/src/closure.md)
- [Inline assembly](rustc-dev-guide/src/asm.md)

## Analysis

- [Prologue](rustc-dev-guide/src/part-4-intro.md)
- [The `ty` module: representing types](rustc-dev-guide/src/ty.md)
    - [Generics and substitutions](rustc-dev-guide/src/generics.md)
    - [`TypeFolder` and `TypeFoldable`](rustc-dev-guide/src/ty-fold.md)
    - [Generic arguments](rustc-dev-guide/src/generic_arguments.md)
    - [Constants in the type system](rustc-dev-guide/src/constants.md)
- [Type inference](rustc-dev-guide/src/type-inference.md)
- [Trait solving](rustc-dev-guide/src/traits/resolution.md)
    - [Early and Late Bound Parameters](rustc-dev-guide/src/early-late-bound.md)
    - [Higher-ranked trait bounds](rustc-dev-guide/src/traits/hrtb.md)
    - [Caching subtleties](rustc-dev-guide/src/traits/caching.md)
    - [Specialization](rustc-dev-guide/src/traits/specialization.md)
    - [Chalk-based trait solving](rustc-dev-guide/src/traits/chalk.md)
        - [Lowering to logic](rustc-dev-guide/src/traits/lowering-to-logic.md)
        - [Goals and clauses](rustc-dev-guide/src/traits/goals-and-clauses.md)
        - [Canonical queries](rustc-dev-guide/src/traits/canonical-queries.md)
- [Type checking](rustc-dev-guide/src/type-checking.md)
    - [Method Lookup](rustc-dev-guide/src/method-lookup.md)
    - [Variance](rustc-dev-guide/src/variance.md)
    - [Opaque Types](rustc-dev-guide/src/opaque-types-type-alias-impl-trait.md)
        - [Inference details](rustc-dev-guide/src/opaque-types-impl-trait-inference.md)
- [Pattern and Exhaustiveness Checking](rustc-dev-guide/src/pat-exhaustive-checking.md)
- [MIR dataflow](rustc-dev-guide/src/mir/dataflow.md)
- [Drop elaboration](rustc-dev-guide/src/mir/drop-elaboration.md)
- [The borrow checker](rustc-dev-guide/src/borrow_check.md)
    - [Tracking moves and initialization](rustc-dev-guide/src/borrow_check/moves_and_initialization.md)
        - [Move paths](rustc-dev-guide/src/borrow_check/moves_and_initialization/move_paths.md)
    - [MIR type checker](rustc-dev-guide/src/borrow_check/type_check.md)
    - [Region inference](rustc-dev-guide/src/borrow_check/region_inference.md)
        - [Constraint propagation](rustc-dev-guide/src/borrow_check/region_inference/constraint_propagation.md)
        - [Lifetime parameters](rustc-dev-guide/src/borrow_check/region_inference/lifetime_parameters.md)
        - [Member constraints](rustc-dev-guide/src/borrow_check/region_inference/member_constraints.md)
        - [Placeholders and universes](borrow_check/region_inference/placeholders_and_universes.md)
        - [Closure constraints](rustc-dev-guide/src/borrow_check/region_inference/closure_constraints.md)
        - [Error reporting](rustc-dev-guide/src/borrow_check/region_inference/error_reporting.md)
    - [Two-phase-borrows](rustc-dev-guide/src/borrow_check/two_phase_borrows.md)
- [Parameter Environments](rustc-dev-guide/src/param_env.md)
- [Errors and Lints](rustc-dev-guide/src/diagnostics/diagnostics.md)
    - [Diagnostic and subdiagnostic structs](rustc-dev-guide/src/diagnostics/diagnostic-structs.md)
    - [Translation](rustc-dev-guide/src/diagnostics/translation.md)
    - [`LintStore`](rustc-dev-guide/src/diagnostics/lintstore.md)
    - [Diagnostic codes](rustc-dev-guide/src/diagnostics/diagnostic-codes.md)
    - [Diagnostic items](rustc-dev-guide/src/diagnostics/diagnostic-items.md)
    - [`ErrorGuaranteed`](rustc-dev-guide/src/diagnostics/error-guaranteed.md)

## MIR to Binaries

- [Prologue](rustc-dev-guide/src/part-5-intro.md)
- [MIR optimizations](rustc-dev-guide/src/mir/optimizations.md)
- [Debugging](rustc-dev-guide/src/mir/debugging.md)
- [Constant evaluation](rustc-dev-guide/src/const-eval.md)
    - [Interpreter](rustc-dev-guide/src/const-eval/interpret.md)
- [Monomorphization](rustc-dev-guide/src/backend/monomorph.md)
- [Lowering MIR](rustc-dev-guide/src/backend/lowering-mir.md)
- [Code Generation](rustc-dev-guide/src/backend/codegen.md)
    - [Updating LLVM](rustc-dev-guide/src/backend/updating-llvm.md)
    - [Debugging LLVM](rustc-dev-guide/src/backend/debugging.md)
    - [Backend Agnostic Codegen](rustc-dev-guide/src/backend/backend-agnostic.md)
    - [Implicit Caller Location](rustc-dev-guide/src/backend/implicit-caller-location.md)
- [Libraries and Metadata](rustc-dev-guide/src/backend/libs-and-metadata.md)
- [Profile-guided Optimization](rustc-dev-guide/src/profile-guided-optimization.md)
- [LLVM Source-Based Code Coverage](rustc-dev-guide/src/llvm-coverage-instrumentation.md)
- [Sanitizers Support](rustc-dev-guide/src/sanitizers.md)
- [Debugging Support in the Rust Compiler](rustc-dev-guide/src/debugging-support-in-rustc.md)

---

[Appendix A: Background topics](rustc-dev-guide/src/appendix/background.md)
[Appendix B: Glossary](rustc-dev-guide/src/appendix/glossary.md)
[Appendix C: Code Index](rustc-dev-guide/src/appendix/code-index.md)
[Appendix D: Compiler Lecture Series](rustc-dev-guide/src/appendix/compiler-lecture.md)
[Appendix E: Bibliography](rustc-dev-guide/src/appendix/bibliography.md)

[Appendix Z: HumorRust](rustc-dev-guide/src/appendix/humorust.md)

---



## 🟢🔵The Embedded Rust Book

<!--

Definition of the organization of this book is still a work in process.

Refer to https://github.com/rust-embedded/book/issues for
more information and coordination

-->

- [Introduction](embeded-book/src/intro/index.md)
    - [Hardware](embeded-book/src/intro/hardware.md)
    - [`no_std`](embeded-book/src/intro/no-std.md)
    - [Tooling](embeded-book/src/intro/tooling.md)
    - [Installation](embeded-book/src/intro/install.md)
        - [Linux](embeded-book/src/intro/install/linux.md)
        - [MacOS](embeded-book/src/intro/install/macos.md)
        - [Windows](embeded-book/src/intro/install/windows.md)
        - [Verify Installation](embeded-book/src/intro/install/verify.md)
- [Getting started](embeded-book/src/start/index.md)
  - [QEMU](embeded-book/src/start/qemu.md)
  - [Hardware](embeded-book/src/start/hardware.md)
  - [Memory-mapped Registers](embeded-book/src/start/registers.md)
  - [Semihosting](embeded-book/src/start/semihosting.md)
  - [Panicking](embeded-book/src/start/panicking.md)
  - [Exceptions](embeded-book/src/start/exceptions.md)
  - [Interrupts](embeded-book/src/start/interrupts.md)
  - [IO](embeded-book/src/start/io.md)
- [Peripherals](embeded-book/src/peripherals/index.md)
    - [A first attempt in Rust](embeded-book/src/peripherals/a-first-attempt.md)
    - [The Borrow Checker](embeded-book/src/peripherals/borrowck.md)
    - [Singletons](embeded-book/src/peripherals/singletons.md)
- [Static Guarantees](embeded-book/src/static-guarantees/index.md)
    - [Typestate Programming](embeded-book/src/static-guarantees/typestate-programming.md)
    - [Peripherals as State Machines](embeded-book/src/static-guarantees/state-machines.md)
    - [Design Contracts](embeded-book/src/static-guarantees/design-contracts.md)
    - [Zero Cost Abstractions](embeded-book/src/static-guarantees/zero-cost-abstractions.md)
- [Portability](embeded-book/src/portability/index.md)
- [Concurrency](embeded-book/src/concurrency/index.md)
- [Collections](embeded-book/src/collections/index.md)
- [Design Patterns](embeded-book/src/design-patterns/index.md)
    - [HALs](embeded-book/src/design-patterns/hal/index.md)
        - [Checklist](embeded-book/src/design-patterns/hal/checklist.md)
        - [Naming](embeded-book/src/design-patterns/hal/naming.md)
        - [Interoperability](embeded-book/src/design-patterns/hal/interoperability.md)
        - [Predictability](embeded-book/src/design-patterns/hal/predictability.md)
        - [GPIO](embeded-book/src/design-patterns/hal/gpio.md)
- [Tips for embedded C developers](embeded-book/src/c-tips/index.md)
    <!-- TODO: Define Sections -->
- [Interoperability](embeded-book/src/interoperability/index.md)
    - [A little C with your Rust](embeded-book/src/interoperability/c-with-rust.md)
    - [A little Rust with your C](embeded-book/src/interoperability/rust-with-c.md)
- [Unsorted topics](embeded-book/src/unsorted/index.md)
  - [Optimizations: The speed size tradeoff](embeded-book/src/unsorted/speed-vs-size.md)
  - [Performing Math Functionality](embeded-book/src/unsorted/math.md)

---

[Appendix A: Glossary](embeded-book/src/appendix/glossary.md)


## 🟢🔵The Rust Reference

[Introduction](reference/src/introduction.md)

- [Notation](reference/src/notation.md)

- [Lexical structure](reference/src/lexical-structure.md)
    - [Input format](reference/src/input-format.md)
    - [Keywords](reference/src/keywords.md)
    - [Identifiers](reference/src/identifiers.md)
    - [Comments](reference/src/comments.md)
    - [Whitespace](reference/src/whitespace.md)
    - [Tokens](reference/src/tokens.md)

- [Macros](reference/src/macros.md)
    - [Macros By Example](reference/src/macros-by-example.md)
    - [Procedural Macros](reference/src/procedural-macros.md)

- [Crates and source files](reference/src/crates-and-source-files.md)

- [Conditional compilation](reference/src/conditional-compilation.md)

- [Items](reference/src/items.md)
    - [Modules](reference/src/items/modules.md)
    - [Extern crates](reference/src/items/extern-crates.md)
    - [Use declarations](reference/src/items/use-declarations.md)
    - [Functions](reference/src/items/functions.md)
    - [Type aliases](reference/src/items/type-aliases.md)
    - [Structs](reference/src/items/structs.md)
    - [Enumerations](reference/src/items/enumerations.md)
    - [Unions](reference/src/items/unions.md)
    - [Constant items](reference/src/items/constant-items.md)
    - [Static items](reference/src/items/static-items.md)
    - [Traits](reference/src/items/traits.md)
    - [Implementations](reference/src/items/implementations.md)
    - [External blocks](reference/src/items/external-blocks.md)
    - [Generic parameters](reference/src/items/generics.md)
    - [Associated Items](reference/src/items/associated-items.md)

- [Attributes](reference/src/attributes.md)
    - [Testing](reference/src/attributes/testing.md)
    - [Derive](reference/src/attributes/derive.md)
    - [Diagnostics](reference/src/attributes/diagnostics.md)
    - [Code generation](reference/src/attributes/codegen.md)
    - [Limits](reference/src/attributes/limits.md)
    - [Type System](reference/src/attributes/type_system.md)

- [Statements and expressions](reference/src/statements-and-expressions.md)
    - [Statements](reference/src/statements.md)
    - [Expressions](reference/src/expressions.md)
        - [Literal expressions](reference/src/expressions/literal-expr.md)
        - [Path expressions](reference/src/expressions/path-expr.md)
        - [Block expressions](reference/src/expressions/block-expr.md)
        - [Operator expressions](reference/src/expressions/operator-expr.md)
        - [Grouped expressions](reference/src/expressions/grouped-expr.md)
        - [Array and index expressions](reference/src/expressions/array-expr.md)
        - [Tuple and index expressions](reference/src/expressions/tuple-expr.md)
        - [Struct expressions](reference/src/expressions/struct-expr.md)
        - [Call expressions](reference/src/expressions/call-expr.md)
        - [Method call expressions](reference/src/expressions/method-call-expr.md)
        - [Field access expressions](reference/src/expressions/field-expr.md)
        - [Closure expressions](reference/src/expressions/closure-expr.md)
        - [Loop expressions](reference/src/expressions/loop-expr.md)
        - [Range expressions](reference/src/expressions/range-expr.md)
        - [If and if let expressions](reference/src/expressions/if-expr.md)
        - [Match expressions](reference/src/expressions/match-expr.md)
        - [Return expressions](reference/src/expressions/return-expr.md)
        - [Await expressions](reference/src/expressions/await-expr.md)
        - [Underscore expressions](reference/src/expressions/underscore-expr.md)

- [Patterns](reference/src/patterns.md)

- [Type system](reference/src/type-system.md)
    - [Types](reference/src/types.md)
        - [Boolean type](reference/src/types/boolean.md)
        - [Numeric types](reference/src/types/numeric.md)
        - [Textual types](reference/src/types/textual.md)
        - [Never type](reference/src/types/never.md)
        - [Tuple types](reference/src/types/tuple.md)
        - [Array types](reference/src/types/array.md)
        - [Slice types](reference/src/types/slice.md)
        - [Struct types](reference/src/types/struct.md)
        - [Enumerated types](reference/src/types/enum.md)
        - [Union types](reference/src/types/union.md)
        - [Function item types](reference/src/types/function-item.md)
        - [Closure types](reference/src/types/closure.md)
        - [Pointer types](reference/src/types/pointer.md)
        - [Function pointer types](reference/src/types/function-pointer.md)
        - [Trait object types](reference/src/types/trait-object.md)
        - [Impl trait type](reference/src/types/impl-trait.md)
        - [Type parameters](reference/src/types/parameters.md)
        - [Inferred type](reference/src/types/inferred.md)
    - [Dynamically Sized Types](reference/src/dynamically-sized-types.md)
    - [Type layout](reference/src/type-layout.md)
    - [Interior mutability](reference/src/interior-mutability.md)
    - [Subtyping and Variance](reference/src/subtyping.md)
    - [Trait and lifetime bounds](reference/src/trait-bounds.md)
    - [Type coercions](reference/src/type-coercions.md)
    - [Destructors](reference/src/destructors.md)
    - [Lifetime elision](reference/src/lifetime-elision.md)

- [Special types and traits](reference/src/special-types-and-traits.md)

- [Names](reference/src/names.md)
    - [Namespaces](reference/src/names/namespaces.md)
    - [Scopes](reference/src/names/scopes.md)
    - [Preludes](reference/src/names/preludes.md)
    - [Paths](reference/src/paths.md)
    - [Name resolution](reference/src/names/name-resolution.md)
    - [Visibility and privacy](reference/src/visibility-and-privacy.md)

- [Memory model](reference/src/memory-model.md)
    - [Memory allocation and lifetime](reference/src/memory-allocation-and-lifetime.md)
    - [Variables](reference/src/variables.md)

- [Linkage](reference/src/linkage.md)

- [Inline assembly](reference/src/inline-assembly.md)

- [Unsafety](reference/src/unsafety.md)
    - [The `unsafe` keyword](reference/src/unsafe-keyword.md)
    - [Behavior considered undefined](reference/src/behavior-considered-undefined.md)
    - [Behavior not considered unsafe](reference/src/behavior-not-considered-unsafe.md)

- [Constant Evaluation](reference/src/const_eval.md)

- [Application Binary Interface](reference/src/abi.md)

- [The Rust runtime](reference/src/runtime.md)

- [Appendices](reference/src/appendices.md)
    - [Macro Follow-Set Ambiguity Formal Specification](reference/src/macro-ambiguity.md)
    - [Influences](reference/src/influences.md)
    - [Glossary](reference/src/glossary.md)


## 🟢🔵The Rustonomicon

[Introduction](nomicon/src/intro.md)

* [Meet Safe and Unsafe](nomicon/src/meet-safe-and-unsafe.md)
  * [How Safe and Unsafe Interact](nomicon/src/safe-unsafe-meaning.md)
  * [What Unsafe Can Do](nomicon/src/what-unsafe-does.md)
  * [Working with Unsafe](nomicon/src/working-with-unsafe.md)
* [Data Layout](nomicon/src/data.md)
  * [repr(Rust)](nomicon/src/repr-rust.md)
  * [Exotically Sized Types](nomicon/src/exotic-sizes.md)
  * [Other reprs](nomicon/src/other-reprs.md)
* [Ownership](nomicon/src/ownership.md)
  * [References](nomicon/src/references.md)
  * [Aliasing](nomicon/src/aliasing.md)
  * [Lifetimes](nomicon/src/lifetimes.md)
  * [Limits of Lifetimes](nomicon/src/lifetime-mismatch.md)
  * [Lifetime Elision](nomicon/src/lifetime-elision.md)
  * [Unbounded Lifetimes](nomicon/src/unbounded-lifetimes.md)
  * [Higher-Rank Trait Bounds](nomicon/src/hrtb.md)
  * [Subtyping and Variance](nomicon/src/subtyping.md)
  * [Drop Check](nomicon/src/dropck.md)
  * [PhantomData](nomicon/src/phantom-data.md)
  * [Splitting Borrows](nomicon/src/borrow-splitting.md)
* [Type Conversions](nomicon/src/conversions.md)
  * [Coercions](nomicon/src/coercions.md)
  * [The Dot Operator](nomicon/src/dot-operator.md)
  * [Casts](nomicon/src/casts.md)
  * [Transmutes](nomicon/src/transmutes.md)
* [Uninitialized Memory](nomicon/src/uninitialized.md)
  * [Checked](nomicon/src/checked-uninit.md)
  * [Drop Flags](nomicon/src/drop-flags.md)
  * [Unchecked](nomicon/src/unchecked-uninit.md)
* [Ownership Based Resource Management](nomicon/src/obrm.md)
  * [Constructors](nomicon/src/constructors.md)
  * [Destructors](nomicon/src/destructors.md)
  * [Leaking](nomicon/src/leaking.md)
* [Unwinding](nomicon/src/unwinding.md)
  * [Exception Safety](nomicon/src/exception-safety.md)
  * [Poisoning](nomicon/src/poisoning.md)
* [Concurrency](nomicon/src/concurrency.md)
  * [Races](nomicon/src/races.md)
  * [Send and Sync](nomicon/src/send-and-sync.md)
  * [Atomics](nomicon/src/atomics.md)
* [Implementing Vec](nomicon/src/./vec/vec.md)
  * [Layout](nomicon/src/./vec/vec-layout.md)
  * [Allocating](nomicon/src/./vec/vec-alloc.md)
  * [Push and Pop](nomicon/src/./vec/vec-push-pop.md)
  * [Deallocating](nomicon/src/./vec/vec-dealloc.md)
  * [Deref](nomicon/src/./vec/vec-deref.md)
  * [Insert and Remove](nomicon/src/./vec/vec-insert-remove.md)
  * [IntoIter](nomicon/src/./vec/vec-into-iter.md)
  * [RawVec](nomicon/src/./vec/vec-raw.md)
  * [Drain](nomicon/src/./vec/vec-drain.md)
  * [Handling Zero-Sized Types](nomicon/src/./vec/vec-zsts.md)
  * [Final Code](nomicon/src/./vec/vec-final.md)
* [Implementing Arc and Mutex](nomicon/src/./arc-mutex/arc-and-mutex.md)
  * [Arc](nomicon/src/./arc-mutex/arc.md)
    * [Layout](nomicon/src/./arc-mutex/arc-layout.md)
    * [Base Code](nomicon/src/./arc-mutex/arc-base.md)
    * [Cloning](nomicon/src/./arc-mutex/arc-clone.md)
    * [Dropping](nomicon/src/./arc-mutex/arc-drop.md)
    * [Final Code](nomicon/src/./arc-mutex/arc-final.md)
* [FFI](nomicon/src/ffi.md)
* [Beneath `std`](nomicon/src/beneath-std.md)
  * [#[panic_handler]](nomicon/src/panic-handler.md)


## 🟢🔵The Unstable Book

## 1. Compiler flags

- [1. Compiler flags](https://doc.rust-lang.org/unstable-book/compiler-flags.html)
    - [1.1. branch_protection](https://doc.rust-lang.org/unstable-book/compiler-flags/branch-protection.html)
    - [1.2. cf_protection](https://doc.rust-lang.org/unstable-book/compiler-flags/cf-protection.html)
    - [1.3. check_cfg](https://doc.rust-lang.org/unstable-book/compiler-flags/check-cfg.html)
    - [1.4. codegen_backend](https://doc.rust-lang.org/unstable-book/compiler-flags/codegen-backend.html)
    - [1.5. control_flow_guard](https://doc.rust-lang.org/unstable-book/compiler-flags/control-flow-guard.html)
    - [1.6. debug_info_for_profiling](https://doc.rust-lang.org/unstable-book/compiler-flags/debug_info_for_profiling.html)
    - [1.7. dwarf_version](https://doc.rust-lang.org/unstable-book/compiler-flags/dwarf-version.html)
    - [1.8. emit_stack_sizes](https://doc.rust-lang.org/unstable-book/compiler-flags/emit-stack-sizes.html)
    - [1.9. extern_options](https://doc.rust-lang.org/unstable-book/compiler-flags/extern-options.html)
    - [1.10. location_detail](https://doc.rust-lang.org/unstable-book/compiler-flags/location-detail.html)
    - [1.11. move_size_limit](https://doc.rust-lang.org/unstable-book/compiler-flags/move-size-limit.html)
    - [1.12. no_unique_section_names](https://doc.rust-lang.org/unstable-book/compiler-flags/no-unique-section-names.html)
    - [1.13. profile](https://doc.rust-lang.org/unstable-book/compiler-flags/profile.html)
    - [1.14. profile_sample_use](https://doc.rust-lang.org/unstable-book/compiler-flags/profile_sample_use.html)
    - [1.15. remap_cwd_prefix](https://doc.rust-lang.org/unstable-book/compiler-flags/remap-cwd-prefix.html)
    - [1.16. report_time](https://doc.rust-lang.org/unstable-book/compiler-flags/report-time.html)
    - [1.17. sanitizer](https://doc.rust-lang.org/unstable-book/compiler-flags/sanitizer.html)
    - [1.18. self_profile](https://doc.rust-lang.org/unstable-book/compiler-flags/self-profile.html)
    - [1.19. self_profile_events](https://doc.rust-lang.org/unstable-book/compiler-flags/self-profile-events.html)
    - [1.20. src_hash_algorithm](https://doc.rust-lang.org/unstable-book/compiler-flags/src-hash-algorithm.html)
    - [1.21. temps_dir](https://doc.rust-lang.org/unstable-book/compiler-flags/temps-dir.html)
    - [1.22. tls_model](https://doc.rust-lang.org/unstable-book/compiler-flags/tls-model.html)
    - [1.23. unsound_mir_opts](https://doc.rust-lang.org/unstable-book/compiler-flags/unsound-mir-opts.html)
    - [1.24. virtual_function_elimination](https://doc.rust-lang.org/unstable-book/compiler-flags/virtual-function-elimination.html)

## 2. Language features

- [2. Language features](https://doc.rust-lang.org/unstable-book/language-features.html)
    - [2.1. aarch64_ver_target_feature](https://doc.rust-lang.org/unstable-book/language-features/aarch64-ver-target-feature.html)
    - [2.2. abi_amdgpu_kernel](https://doc.rust-lang.org/unstable-book/language-features/abi-amdgpu-kernel.html)
    - [2.3. abi_avr_interrupt](https://doc.rust-lang.org/unstable-book/language-features/abi-avr-interrupt.html)
    - [2.4. abi_c_cmse_nonsecure_call](https://doc.rust-lang.org/unstable-book/language-features/abi-c-cmse-nonsecure-call.html)
    - [2.5. abi_efiapi](https://doc.rust-lang.org/unstable-book/language-features/abi-efiapi.html)
    - [2.6. abi_msp430_interrupt](https://doc.rust-lang.org/unstable-book/language-features/abi-msp430-interrupt.html)
    - [2.7. abi_ptx](https://doc.rust-lang.org/unstable-book/language-features/abi-ptx.html)
    - [2.8. abi_thiscall](https://doc.rust-lang.org/unstable-book/language-features/abi-thiscall.html)
    - [2.9. abi_unadjusted](https://doc.rust-lang.org/unstable-book/language-features/abi-unadjusted.html)
    - [2.10. abi_vectorcall](https://doc.rust-lang.org/unstable-book/language-features/abi-vectorcall.html)
    - [2.11. abi_x86_interrupt](https://doc.rust-lang.org/unstable-book/language-features/abi-x86-interrupt.html)
    - [2.12. adt_const_params](https://doc.rust-lang.org/unstable-book/language-features/adt-const-params.html)
    - [2.13. alloc_error_handler](https://doc.rust-lang.org/unstable-book/language-features/alloc-error-handler.html)
    - [2.14. allocator_internals](https://doc.rust-lang.org/unstable-book/language-features/allocator-internals.html)
    - [2.15. allow_internal_unsafe](https://doc.rust-lang.org/unstable-book/language-features/allow-internal-unsafe.html)
    - [2.16. allow_internal_unstable](https://doc.rust-lang.org/unstable-book/language-features/allow-internal-unstable.html)
    - [2.17. anonymous_lifetime_in_impl_trait](https://doc.rust-lang.org/unstable-book/language-features/anonymous-lifetime-in-impl-trait.html)
    - [2.18. arbitrary_enum_discriminant](https://doc.rust-lang.org/unstable-book/language-features/arbitrary-enum-discriminant.html)
    - [2.19. arbitrary_self_types](https://doc.rust-lang.org/unstable-book/language-features/arbitrary-self-types.html)
    - [2.20. arm_target_feature](https://doc.rust-lang.org/unstable-book/language-features/arm-target-feature.html)
    - [2.21. asm_const](https://doc.rust-lang.org/unstable-book/language-features/asm-const.html)
    - [2.22. asm_experimental_arch](https://doc.rust-lang.org/unstable-book/language-features/asm-experimental-arch.html)
    - [2.23. asm_sym](https://doc.rust-lang.org/unstable-book/language-features/asm-sym.html)
    - [2.24. asm_unwind](https://doc.rust-lang.org/unstable-book/language-features/asm-unwind.html)
    - [2.25. associated_const_equality](https://doc.rust-lang.org/unstable-book/language-features/associated-const-equality.html)
    - [2.26. associated_type_bounds](https://doc.rust-lang.org/unstable-book/language-features/associated-type-bounds.html)
    - [2.27. associated_type_defaults](https://doc.rust-lang.org/unstable-book/language-features/associated-type-defaults.html)
    - [2.28. async_closure](https://doc.rust-lang.org/unstable-book/language-features/async-closure.html)
    - [2.29. auto_traits](https://doc.rust-lang.org/unstable-book/language-features/auto-traits.html)
    - [2.30. avx512_target_feature](https://doc.rust-lang.org/unstable-book/language-features/avx512-target-feature.html)
    - [2.31. box_patterns](https://doc.rust-lang.org/unstable-book/language-features/box-patterns.html)
    - [2.32. box_syntax](https://doc.rust-lang.org/unstable-book/language-features/box-syntax.html)
    - [2.33. bpf_target_feature](https://doc.rust-lang.org/unstable-book/language-features/bpf-target-feature.html)
    - [2.34. c_unwind](https://doc.rust-lang.org/unstable-book/language-features/c-unwind.html)
    - [2.35. c_variadic](https://doc.rust-lang.org/unstable-book/language-features/c-variadic.html)
    - [2.36. capture_disjoint_fields](https://doc.rust-lang.org/unstable-book/language-features/capture-disjoint-fields.html)
    - [2.37. cfg_sanitize](https://doc.rust-lang.org/unstable-book/language-features/cfg-sanitize.html)
    - [2.38. cfg_target_abi](https://doc.rust-lang.org/unstable-book/language-features/cfg-target-abi.html)
    - [2.39. cfg_target_compact](https://doc.rust-lang.org/unstable-book/language-features/cfg-target-compact.html)
    - [2.40. cfg_target_has_atomic](https://doc.rust-lang.org/unstable-book/language-features/cfg-target-has-atomic.html)
    - [2.41. cfg_target_has_atomic_equal_alignment](https://doc.rust-lang.org/unstable-book/language-features/cfg-target-has-atomic-equal-alignment.html)
    - [2.42. cfg_target_thread_local](https://doc.rust-lang.org/unstable-book/language-features/cfg-target-thread-local.html)
    - [2.43. cfg_version](https://doc.rust-lang.org/unstable-book/language-features/cfg-version.html)
    - [2.44. closure_lifetime_binder](https://doc.rust-lang.org/unstable-book/language-features/closure-lifetime-binder.html)
    - [2.45. closure_track_caller](https://doc.rust-lang.org/unstable-book/language-features/closure-track-caller.html)
    - [2.46. cmpxchg16b_target_feature](https://doc.rust-lang.org/unstable-book/language-features/cmpxchg16b-target-feature.html)
    - [2.47. cmse_nonsecure_entry](https://doc.rust-lang.org/unstable-book/language-features/cmse-nonsecure-entry.html)
    - [2.48. collapse_debuginfo](https://doc.rust-lang.org/unstable-book/language-features/collapse-debuginfo.html)
    - [2.49. compiler_builtins](https://doc.rust-lang.org/unstable-book/language-features/compiler-builtins.html)
    - [2.50. const_async_blocks](https://doc.rust-lang.org/unstable-book/language-features/const-async-blocks.html)
    - [2.51. const_eval_limit](https://doc.rust-lang.org/unstable-book/language-features/const-eval-limit.html)
    - [2.52. const_extern_fn](https://doc.rust-lang.org/unstable-book/language-features/const-extern-fn.html)
    - [2.53. const_fn_floating_point_arithmetic](https://doc.rust-lang.org/unstable-book/language-features/const-fn-floating-point-arithmetic.html)
    - [2.54. const_for](https://doc.rust-lang.org/unstable-book/language-features/const-for.html)
    - [2.55. const_mut_refs](https://doc.rust-lang.org/unstable-book/language-features/const-mut-refs.html)
    - [2.56. const_precise_live_drops](https://doc.rust-lang.org/unstable-book/language-features/const-precise-live-drops.html)
    - [2.57. const_refs_to_cell](https://doc.rust-lang.org/unstable-book/language-features/const-refs-to-cell.html)
    - [2.58. const_trait_impl](https://doc.rust-lang.org/unstable-book/language-features/const-trait-impl.html)
    - [2.59. const_try](https://doc.rust-lang.org/unstable-book/language-features/const-try.html)
    - [2.60. custom_inner_attributes](https://doc.rust-lang.org/unstable-book/language-features/custom-inner-attributes.html)
    - [2.61. custom_test_frameworks](https://doc.rust-lang.org/unstable-book/language-features/custom-test-frameworks.html)
    - [2.62. debugger_visualizer](https://doc.rust-lang.org/unstable-book/language-features/debugger-visualizer.html)
    - [2.63. decl_macro](https://doc.rust-lang.org/unstable-book/language-features/decl-macro.html)
    - [2.64. default_alloc_error_handler](https://doc.rust-lang.org/unstable-book/language-features/default-alloc-error-handler.html)
    - [2.65. default_type_parameter_fallback](https://doc.rust-lang.org/unstable-book/language-features/default-type-parameter-fallback.html)
    - [2.66. deprecated_safe](https://doc.rust-lang.org/unstable-book/language-features/deprecated-safe.html)
    - [2.67. deprecated_suggestion](https://doc.rust-lang.org/unstable-book/language-features/deprecated-suggestion.html)
    - [2.68. doc_auto_cfg](https://doc.rust-lang.org/unstable-book/language-features/doc-auto-cfg.html)
    - [2.69. doc_cfg](https://doc.rust-lang.org/unstable-book/language-features/doc-cfg.html)
    - [2.70. doc_cfg_hide](https://doc.rust-lang.org/unstable-book/language-features/doc-cfg-hide.html)
    - [2.71. doc_masked](https://doc.rust-lang.org/unstable-book/language-features/doc-masked.html)
    - [2.72. doc_notable_trait](https://doc.rust-lang.org/unstable-book/language-features/doc-notable-trait.html)
    - [2.73. dropck_eyepatch](https://doc.rust-lang.org/unstable-book/language-features/dropck-eyepatch.html)
    - [2.74. dyn_star](https://doc.rust-lang.org/unstable-book/language-features/dyn-star.html)
    - [2.75. ermsb_target_feature](https://doc.rust-lang.org/unstable-book/language-features/ermsb-target-feature.html)
    - [2.76. exclusive_range_pattern](https://doc.rust-lang.org/unstable-book/language-features/exclusive-range-pattern.html)
    - [2.77. exhaustive_patterns](https://doc.rust-lang.org/unstable-book/language-features/exhaustive-patterns.html)
    - [2.78. extern_types](https://doc.rust-lang.org/unstable-book/language-features/extern-types.html)
    - [2.79. f16c_target_feature](https://doc.rust-lang.org/unstable-book/language-features/f16c-target-feature.html)
    - [2.80. ffi_const](https://doc.rust-lang.org/unstable-book/language-features/ffi-const.html)
    - [2.81. ffi_pure](https://doc.rust-lang.org/unstable-book/language-features/ffi-pure.html)
    - [2.82. ffi_returns_twice](https://doc.rust-lang.org/unstable-book/language-features/ffi-returns-twice.html)
    - [2.83. fn_align](https://doc.rust-lang.org/unstable-book/language-features/fn-align.html)
    - [2.84. fundamental](https://doc.rust-lang.org/unstable-book/language-features/fundamental.html)
    - [2.85. generator_clone](https://doc.rust-lang.org/unstable-book/language-features/generator-clone.html)
    - [2.86. generators](https://doc.rust-lang.org/unstable-book/language-features/generators.html)
    - [2.87. generic_arg_infer](https://doc.rust-lang.org/unstable-book/language-features/generic-arg-infer.html)
    - [2.88. generic_assert](https://doc.rust-lang.org/unstable-book/language-features/generic-assert.html)
    - [2.89. generic_associated_types_extended](https://doc.rust-lang.org/unstable-book/language-features/generic-associated-types-extended.html)
    - [2.90. generic_const_exprs](https://doc.rust-lang.org/unstable-book/language-features/generic-const-exprs.html)
    - [2.91. half_open_range_patterns](https://doc.rust-lang.org/unstable-book/language-features/half-open-range-patterns.html)
    - [2.92. hexagon_target_feature](https://doc.rust-lang.org/unstable-book/language-features/hexagon-target-feature.html)
    - [2.93. if_let_guard](https://doc.rust-lang.org/unstable-book/language-features/if-let-guard.html)
    - [2.94. imported_main](https://doc.rust-lang.org/unstable-book/language-features/imported-main.html)
    - [2.95. inherent_associated_types](https://doc.rust-lang.org/unstable-book/language-features/inherent-associated-types.html)
    - [2.96. inline_const](https://doc.rust-lang.org/unstable-book/language-features/inline-const.html)
    - [2.97. inline_const_pat](https://doc.rust-lang.org/unstable-book/language-features/inline-const-pat.html)
    - [2.98. intra_doc_pointers](https://doc.rust-lang.org/unstable-book/language-features/intra-doc-pointers.html)
    - [2.99. intrinsics](https://doc.rust-lang.org/unstable-book/language-features/intrinsics.html)
    - [2.100. isa_attribute](https://doc.rust-lang.org/unstable-book/language-features/isa-attribute.html)
    - [2.101. lang_items](https://doc.rust-lang.org/unstable-book/language-features/lang-items.html)
    - [2.102. large_assignments](https://doc.rust-lang.org/unstable-book/language-features/large-assignments.html)
    - [2.103. let_chains](https://doc.rust-lang.org/unstable-book/language-features/let-chains.html)
    - [2.104. link_cfg](https://doc.rust-lang.org/unstable-book/language-features/link-cfg.html)
    - [2.105. link_llvm_intrinsics](https://doc.rust-lang.org/unstable-book/language-features/link-llvm-intrinsics.html)
    - [2.106. linkage](https://doc.rust-lang.org/unstable-book/language-features/linkage.html)
    - [2.107. lint_reasons](https://doc.rust-lang.org/unstable-book/language-features/lint-reasons.html)
    - [2.108. macro_metavar_expr](https://doc.rust-lang.org/unstable-book/language-features/macro-metavar-expr.html)
    - [2.109. marker_trait_attr](https://doc.rust-lang.org/unstable-book/language-features/marker-trait-attr.html)
    - [2.110. min_specialization](https://doc.rust-lang.org/unstable-book/language-features/min-specialization.html)
    - [2.111. mips_target_feature](https://doc.rust-lang.org/unstable-book/language-features/mips-target-feature.html)
    - [2.112. more_qualified_paths](https://doc.rust-lang.org/unstable-book/language-features/more-qualified-paths.html)
    - [2.113. movbe_target_feature](https://doc.rust-lang.org/unstable-book/language-features/movbe-target-feature.html)
    - [2.114. must_not_suspend](https://doc.rust-lang.org/unstable-book/language-features/must-not-suspend.html)
    - [2.115. naked_functions](https://doc.rust-lang.org/unstable-book/language-features/naked-functions.html)
    - [2.116. native_link_modifiers_as_needed](https://doc.rust-lang.org/unstable-book/language-features/native-link-modifiers-as-needed.html)
    - [2.117. native_link_modifiers_verbatim](https://doc.rust-lang.org/unstable-book/language-features/native-link-modifiers-verbatim.html)
    - [2.118. needs_panic_runtime](https://doc.rust-lang.org/unstable-book/language-features/needs-panic-runtime.html)
    - [2.119. negative_impls](https://doc.rust-lang.org/unstable-book/language-features/negative-impls.html)
    - [2.120. never_type](https://doc.rust-lang.org/unstable-book/language-features/never-type.html)
    - [2.121. never_type_fallback](https://doc.rust-lang.org/unstable-book/language-features/never-type-fallback.html)
    - [2.122. no_core](https://doc.rust-lang.org/unstable-book/language-features/no-core.html)
    - [2.123. no_coverage](https://doc.rust-lang.org/unstable-book/language-features/no-coverage.html)
    - [2.124. no_sanitize](https://doc.rust-lang.org/unstable-book/language-features/no-sanitize.html)
    - [2.125. non_exhaustive_omitted_patterns_lint](https://doc.rust-lang.org/unstable-book/language-features/non-exhaustive-omitted-patterns-lint.html)
    - [2.126. object_safe_for_dispatch](https://doc.rust-lang.org/unstable-book/language-features/object-safe-for-dispatch.html)
    - [2.127. omit_gdb_pretty_printer_section](https://doc.rust-lang.org/unstable-book/language-features/omit-gdb-pretty-printer-section.html)
    - [2.128. optimize_attribute](https://doc.rust-lang.org/unstable-book/language-features/optimize-attribute.html)
    - [2.129. panic_runtime](https://doc.rust-lang.org/unstable-book/language-features/panic-runtime.html)
    - [2.130. platform_intrinsics](https://doc.rust-lang.org/unstable-book/language-features/platform-intrinsics.html)
    - [2.131. plugin](https://doc.rust-lang.org/unstable-book/language-features/plugin.html)
    - [2.132. powerpc_target_feature](https://doc.rust-lang.org/unstable-book/language-features/powerpc-target-feature.html)
    - [2.133. precise_pointer_size_matching](https://doc.rust-lang.org/unstable-book/language-features/precise-pointer-size-matching.html)
    - [2.134. prelude_import](https://doc.rust-lang.org/unstable-book/language-features/prelude-import.html)
    - [2.135. proc_macro_hygiene](https://doc.rust-lang.org/unstable-book/language-features/proc-macro-hygiene.html)
    - [2.136. profiler_runtime](https://doc.rust-lang.org/unstable-book/language-features/profiler-runtime.html)
    - [2.137. raw_dylib](https://doc.rust-lang.org/unstable-book/language-features/raw-dylib.html)
    - [2.138. raw_ref_op](https://doc.rust-lang.org/unstable-book/language-features/raw-ref-op.html)
    - [2.139. register_tool](https://doc.rust-lang.org/unstable-book/language-features/register-tool.html)
    - [2.140. repr_simd](https://doc.rust-lang.org/unstable-book/language-features/repr-simd.html)
    - [2.141. repr128](https://doc.rust-lang.org/unstable-book/language-features/repr128.html)
    - [2.142. return_position_impl_trait_in_trait](https://doc.rust-lang.org/unstable-book/language-features/return-position-impl-trait-in-trait.html)
    - [2.143. riscv_target_feature](https://doc.rust-lang.org/unstable-book/language-features/riscv-target-feature.html)
    - [2.144. rtm_target_feature](https://doc.rust-lang.org/unstable-book/language-features/rtm-target-feature.html)
    - [2.145. rust_cold_cc](https://doc.rust-lang.org/unstable-book/language-features/rust-cold-cc.html)
    - [2.146. rustc_allow_const_fn_unstable](https://doc.rust-lang.org/unstable-book/language-features/rustc-allow-const-fn-unstable.html)
    - [2.147. rustc_attrs](https://doc.rust-lang.org/unstable-book/language-features/rustc-attrs.html)
    - [2.148. rustc_private](https://doc.rust-lang.org/unstable-book/language-features/rustc-private.html)
    - [2.149. rustdoc_internals](https://doc.rust-lang.org/unstable-book/language-features/rustdoc-internals.html)
    - [2.150. rustdoc_missing_doc_code_examples](https://doc.rust-lang.org/unstable-book/language-features/rustdoc-missing-doc-code-examples.html)
    - [2.151. simd_ffi](https://doc.rust-lang.org/unstable-book/language-features/simd-ffi.html)
    - [2.152. specialization](https://doc.rust-lang.org/unstable-book/language-features/specialization.html)
    - [2.153. sse4a_target_feature](https://doc.rust-lang.org/unstable-book/language-features/sse4a-target-feature.html)
    - [2.154. staged_api](https://doc.rust-lang.org/unstable-book/language-features/staged-api.html)
    - [2.155. start](https://doc.rust-lang.org/unstable-book/language-features/start.html)
    - [2.156. stmt_expr_attributes](https://doc.rust-lang.org/unstable-book/language-features/stmt-expr-attributes.html)
    - [2.157. strict_provenance](https://doc.rust-lang.org/unstable-book/language-features/strict-provenance.html)
    - [2.158. structural_match](https://doc.rust-lang.org/unstable-book/language-features/structural-match.html)
    - [2.159. target_feature_11](https://doc.rust-lang.org/unstable-book/language-features/target-feature-11.html)
    - [2.160. tbm_target_feature](https://doc.rust-lang.org/unstable-book/language-features/tbm-target-feature.html)
    - [2.161. test_2018_feature](https://doc.rust-lang.org/unstable-book/language-features/test-2018-feature.html)
    - [2.162. test_unstable_lint](https://doc.rust-lang.org/unstable-book/language-features/test-unstable-lint.html)
    - [2.163. thread_local](https://doc.rust-lang.org/unstable-book/language-features/thread-local.html)
    - [2.164. trait_alias](https://doc.rust-lang.org/unstable-book/language-features/trait-alias.html)
    - [2.165. trait_upcasting](https://doc.rust-lang.org/unstable-book/language-features/trait-upcasting.html)
    - [2.166. transparent_unions](https://doc.rust-lang.org/unstable-book/language-features/transparent-unions.html)
    - [2.167. trivial_bounds](https://doc.rust-lang.org/unstable-book/language-features/trivial-bounds.html)
    - [2.168. try_blocks](https://doc.rust-lang.org/unstable-book/language-features/try-blocks.html)
    - [2.169. type_alias_impl_trait](https://doc.rust-lang.org/unstable-book/language-features/type-alias-impl-trait.html)
    - [2.170. type_ascription](https://doc.rust-lang.org/unstable-book/language-features/type-ascription.html)
    - [2.171. type_changing_struct_update](https://doc.rust-lang.org/unstable-book/language-features/type-changing-struct-update.html)
    - [2.172. unboxed_closures](https://doc.rust-lang.org/unstable-book/language-features/unboxed-closures.html)
    - [2.173. unix_sigpipe](https://doc.rust-lang.org/unstable-book/language-features/unix-sigpipe.html)
    - [2.174. unsafe_pin_internals](https://doc.rust-lang.org/unstable-book/language-features/unsafe-pin-internals.html)
    - [2.175. unsized_fn_params](https://doc.rust-lang.org/unstable-book/language-features/unsized-fn-params.html)
    - [2.176. unsized_locals](https://doc.rust-lang.org/unstable-book/language-features/unsized-locals.html)
    - [2.177. unsized_tuple_coercion](https://doc.rust-lang.org/unstable-book/language-features/unsized-tuple-coercion.html)
    - [2.178. used_with_arg](https://doc.rust-lang.org/unstable-book/language-features/used-with-arg.html)
    - [2.179. wasm_abi](https://doc.rust-lang.org/unstable-book/language-features/wasm-abi.html)
    - [2.180. wasm_target_feature](https://doc.rust-lang.org/unstable-book/language-features/wasm-target-feature.html)
    - [2.181. with_negative_coherence](https://doc.rust-lang.org/unstable-book/language-features/with-negative-coherence.html)
    - [2.182. yeet_expr](https://doc.rust-lang.org/unstable-book/language-features/yeet-expr.html)

## 3. Library Features

- [3. Library Features](https://doc.rust-lang.org/unstable-book/library-features.html)
    - [3.1. absolute_path](https://doc.rust-lang.org/unstable-book/library-features/absolute-path.html)
    - [3.2. addr_parse_ascii](https://doc.rust-lang.org/unstable-book/library-features/addr-parse-ascii.html)
    - [3.3. alloc_error_hook](https://doc.rust-lang.org/unstable-book/library-features/alloc-error-hook.html)
    - [3.4. alloc_internals](https://doc.rust-lang.org/unstable-book/library-features/alloc-internals.html)
    - [3.5. alloc_layout_extra](https://doc.rust-lang.org/unstable-book/library-features/alloc-layout-extra.html)
    - [3.6. allocator_api](https://doc.rust-lang.org/unstable-book/library-features/allocator-api.html)
    - [3.7. arc_unwrap_or_clone](https://doc.rust-lang.org/unstable-book/library-features/arc-unwrap-or-clone.html)
    - [3.8. array_chunks](https://doc.rust-lang.org/unstable-book/library-features/array-chunks.html)
    - [3.9. array_error_internals](https://doc.rust-lang.org/unstable-book/library-features/array-error-internals.html)
    - [3.10. array_into_iter_constructors](https://doc.rust-lang.org/unstable-book/library-features/array-into-iter-constructors.html)
    - [3.11. array_methods](https://doc.rust-lang.org/unstable-book/library-features/array-methods.html)
    - [3.12. array_try_from_fn](https://doc.rust-lang.org/unstable-book/library-features/array-try-from-fn.html)
    - [3.13. array_try_map](https://doc.rust-lang.org/unstable-book/library-features/array-try-map.html)
    - [3.14. array_windows](https://doc.rust-lang.org/unstable-book/library-features/array-windows.html)
    - [3.15. array_zip](https://doc.rust-lang.org/unstable-book/library-features/array-zip.html)
    - [3.16. as_array_of_cells](https://doc.rust-lang.org/unstable-book/library-features/as-array-of-cells.html)
    - [3.17. assert_matches](https://doc.rust-lang.org/unstable-book/library-features/assert-matches.html)
    - [3.18. async_iter_from_iter](https://doc.rust-lang.org/unstable-book/library-features/async-iter-from-iter.html)
    - [3.19. async_iterator](https://doc.rust-lang.org/unstable-book/library-features/async-iterator.html)
    - [3.20. atomic_bool_fetch_not](https://doc.rust-lang.org/unstable-book/library-features/atomic-bool-fetch-not.html)
    - [3.21. atomic_from_mut](https://doc.rust-lang.org/unstable-book/library-features/atomic-from-mut.html)
    - [3.22. atomic_mut_ptr](https://doc.rust-lang.org/unstable-book/library-features/atomic-mut-ptr.html)
    - [3.23. backtrace_frames](https://doc.rust-lang.org/unstable-book/library-features/backtrace-frames.html)
    - [3.24. bench_black_box](https://doc.rust-lang.org/unstable-book/library-features/bench-black-box.html)
    - [3.25. bigint_helper_methods](https://doc.rust-lang.org/unstable-book/library-features/bigint-helper-methods.html)
    - [3.26. binary_heap_as_slice](https://doc.rust-lang.org/unstable-book/library-features/binary-heap-as-slice.html)
    - [3.27. binary_heap_drain_sorted](https://doc.rust-lang.org/unstable-book/library-features/binary-heap-drain-sorted.html)
    - [3.28. binary_heap_into_iter_sorted](https://doc.rust-lang.org/unstable-book/library-features/binary-heap-into-iter-sorted.html)
    - [3.29. binary_heap_retain](https://doc.rust-lang.org/unstable-book/library-features/binary-heap-retain.html)
    - [3.30. bound_as_ref](https://doc.rust-lang.org/unstable-book/library-features/bound-as-ref.html)
    - [3.31. bound_map](https://doc.rust-lang.org/unstable-book/library-features/bound-map.html)
    - [3.32. box_into_boxed_slice](https://doc.rust-lang.org/unstable-book/library-features/box-into-boxed-slice.html)
    - [3.33. box_into_inner](https://doc.rust-lang.org/unstable-book/library-features/box-into-inner.html)
    - [3.34. btree_drain_filter](https://doc.rust-lang.org/unstable-book/library-features/btree-drain-filter.html)
    - [3.35. btreemap_alloc](https://doc.rust-lang.org/unstable-book/library-features/btreemap-alloc.html)
    - [3.36. buf_read_has_data_left](https://doc.rust-lang.org/unstable-book/library-features/buf-read-has-data-left.html)
    - [3.37. build_hasher_simple_hash_one](https://doc.rust-lang.org/unstable-book/library-features/build-hasher-simple-hash-one.html)
    - [3.38. byte_slice_trim_ascii](https://doc.rust-lang.org/unstable-book/library-features/byte-slice-trim-ascii.html)
    - [3.39. c_size_t](https://doc.rust-lang.org/unstable-book/library-features/c-size-t.html)
    - [3.40. c_void_variant](https://doc.rust-lang.org/unstable-book/library-features/c-void-variant.html)
    - [3.41. can_vector](https://doc.rust-lang.org/unstable-book/library-features/can-vector.html)
    - [3.42. cell_leak](https://doc.rust-lang.org/unstable-book/library-features/cell-leak.html)
    - [3.43. cell_update](https://doc.rust-lang.org/unstable-book/library-features/cell-update.html)
    - [3.44. cfg_accessible](https://doc.rust-lang.org/unstable-book/library-features/cfg-accessible.html)
    - [3.45. cfg_eval](https://doc.rust-lang.org/unstable-book/library-features/cfg-eval.html)
    - [3.46. char_error_internals](https://doc.rust-lang.org/unstable-book/library-features/char-error-internals.html)
    - [3.47. char_indices_offset](https://doc.rust-lang.org/unstable-book/library-features/char-indices-offset.html)
    - [3.48. char_internals](https://doc.rust-lang.org/unstable-book/library-features/char-internals.html)
    - [3.49. coerce_unsized](https://doc.rust-lang.org/unstable-book/library-features/coerce-unsized.html)
    - [3.50. concat_bytes](https://doc.rust-lang.org/unstable-book/library-features/concat-bytes.html)
    - [3.51. concat_idents](https://doc.rust-lang.org/unstable-book/library-features/concat-idents.html)
    - [3.52. const_align_of_val](https://doc.rust-lang.org/unstable-book/library-features/const-align-of-val.html)
    - [3.53. const_align_of_val_raw](https://doc.rust-lang.org/unstable-book/library-features/const-align-of-val-raw.html)
    - [3.54. const_align_offset](https://doc.rust-lang.org/unstable-book/library-features/const-align-offset.html)
    - [3.55. const_alloc_error](https://doc.rust-lang.org/unstable-book/library-features/const-alloc-error.html)
    - [3.56. const_alloc_layout](https://doc.rust-lang.org/unstable-book/library-features/const-alloc-layout.html)
    - [3.57. const_arguments_as_str](https://doc.rust-lang.org/unstable-book/library-features/const-arguments-as-str.html)
    - [3.58. const_array_from_ref](https://doc.rust-lang.org/unstable-book/library-features/const-array-from-ref.html)
    - [3.59. const_array_into_iter_constructors](https://doc.rust-lang.org/unstable-book/library-features/const-array-into-iter-constructors.html)
    - [3.60. const_assert_type2](https://doc.rust-lang.org/unstable-book/library-features/const-assert-type2.html)
    - [3.61. const_assume](https://doc.rust-lang.org/unstable-book/library-features/const-assume.html)
    - [3.62. const_bigint_helper_methods](https://doc.rust-lang.org/unstable-book/library-features/const-bigint-helper-methods.html)
    - [3.63. const_black_box](https://doc.rust-lang.org/unstable-book/library-features/const-black-box.html)
    - [3.64. const_bool_to_option](https://doc.rust-lang.org/unstable-book/library-features/const-bool-to-option.html)
    - [3.65. const_borrow](https://doc.rust-lang.org/unstable-book/library-features/const-borrow.html)
    - [3.66. const_box](https://doc.rust-lang.org/unstable-book/library-features/const-box.html)
    - [3.67. const_btree_new](https://doc.rust-lang.org/unstable-book/library-features/const-btree-new.html)
    - [3.68. const_caller_location](https://doc.rust-lang.org/unstable-book/library-features/const-caller-location.html)
    - [3.69. const_cell_into_inner](https://doc.rust-lang.org/unstable-book/library-features/const-cell-into-inner.html)
    - [3.70. const_char_convert](https://doc.rust-lang.org/unstable-book/library-features/const-char-convert.html)
    - [3.71. const_clone](https://doc.rust-lang.org/unstable-book/library-features/const-clone.html)
    - [3.72. const_cmp](https://doc.rust-lang.org/unstable-book/library-features/const-cmp.html)
    - [3.73. const_convert](https://doc.rust-lang.org/unstable-book/library-features/const-convert.html)
    - [3.74. const_cow_is_borrowed](https://doc.rust-lang.org/unstable-book/library-features/const-cow-is-borrowed.html)
    - [3.75. const_cstr_methods](https://doc.rust-lang.org/unstable-book/library-features/const-cstr-methods.html)
    - [3.76. const_default_impls](https://doc.rust-lang.org/unstable-book/library-features/const-default-impls.html)
    - [3.77. const_deref](https://doc.rust-lang.org/unstable-book/library-features/const-deref.html)
    - [3.78. const_discriminant](https://doc.rust-lang.org/unstable-book/library-features/const-discriminant.html)
    - [3.79. const_eval_select](https://doc.rust-lang.org/unstable-book/library-features/const-eval-select.html)
    - [3.80. const_float_bits_conv](https://doc.rust-lang.org/unstable-book/library-features/const-float-bits-conv.html)
    - [3.81. const_float_classify](https://doc.rust-lang.org/unstable-book/library-features/const-float-classify.html)
    - [3.82. const_fmt_arguments_new](https://doc.rust-lang.org/unstable-book/library-features/const-fmt-arguments-new.html)
    - [3.83. const_fn_trait_ref_impls](https://doc.rust-lang.org/unstable-book/library-features/const-fn-trait-ref-impls.html)
    - [3.84. const_format_args](https://doc.rust-lang.org/unstable-book/library-features/const-format-args.html)
    - [3.85. const_heap](https://doc.rust-lang.org/unstable-book/library-features/const-heap.html)
    - [3.86. const_inherent_unchecked_arith](https://doc.rust-lang.org/unstable-book/library-features/const-inherent-unchecked-arith.html)
    - [3.87. const_int_unchecked_arith](https://doc.rust-lang.org/unstable-book/library-features/const-int-unchecked-arith.html)
    - [3.88. const_intoiterator_identity](https://doc.rust-lang.org/unstable-book/library-features/const-intoiterator-identity.html)
    - [3.89. const_intrinsic_forget](https://doc.rust-lang.org/unstable-book/library-features/const-intrinsic-forget.html)
    - [3.90. const_intrinsic_raw_eq](https://doc.rust-lang.org/unstable-book/library-features/const-intrinsic-raw-eq.html)
    - [3.91. const_io_structs](https://doc.rust-lang.org/unstable-book/library-features/const-io-structs.html)
    - [3.92. const_ip](https://doc.rust-lang.org/unstable-book/library-features/const-ip.html)
    - [3.93. const_ipv4](https://doc.rust-lang.org/unstable-book/library-features/const-ipv4.html)
    - [3.94. const_ipv6](https://doc.rust-lang.org/unstable-book/library-features/const-ipv6.html)
    - [3.95. const_is_char_boundary](https://doc.rust-lang.org/unstable-book/library-features/const-is-char-boundary.html)
    - [3.96. const_likely](https://doc.rust-lang.org/unstable-book/library-features/const-likely.html)
    - [3.97. const_maybe_uninit_array_assume_init](https://doc.rust-lang.org/unstable-book/library-features/const-maybe-uninit-array-assume-init.html)
    - [3.98. const_maybe_uninit_as_mut_ptr](https://doc.rust-lang.org/unstable-book/library-features/const-maybe-uninit-as-mut-ptr.html)
    - [3.99. const_maybe_uninit_assume_init](https://doc.rust-lang.org/unstable-book/library-features/const-maybe-uninit-assume-init.html)
    - [3.100. const_maybe_uninit_assume_init_read](https://doc.rust-lang.org/unstable-book/library-features/const-maybe-uninit-assume-init-read.html)
    - [3.101. const_maybe_uninit_uninit_array](https://doc.rust-lang.org/unstable-book/library-features/const-maybe-uninit-uninit-array.html)
    - [3.102. const_maybe_uninit_write](https://doc.rust-lang.org/unstable-book/library-features/const-maybe-uninit-write.html)
    - [3.103. const_maybe_uninit_zeroed](https://doc.rust-lang.org/unstable-book/library-features/const-maybe-uninit-zeroed.html)
    - [3.104. const_nonnull_new](https://doc.rust-lang.org/unstable-book/library-features/const-nonnull-new.html)
    - [3.105. const_nonnull_slice_from_raw_parts](https://doc.rust-lang.org/unstable-book/library-features/const-nonnull-slice-from-raw-parts.html)
    - [3.106. const_num_from_num](https://doc.rust-lang.org/unstable-book/library-features/const-num-from-num.html)
    - [3.107. const_ops](https://doc.rust-lang.org/unstable-book/library-features/const-ops.html)
    - [3.108. const_option](https://doc.rust-lang.org/unstable-book/library-features/const-option.html)
    - [3.109. const_option_cloned](https://doc.rust-lang.org/unstable-book/library-features/const-option-cloned.html)
    - [3.110. const_option_ext](https://doc.rust-lang.org/unstable-book/library-features/const-option-ext.html)
    - [3.111. const_pin](https://doc.rust-lang.org/unstable-book/library-features/const-pin.html)
    - [3.112. const_pointer_byte_offsets](https://doc.rust-lang.org/unstable-book/library-features/const-pointer-byte-offsets.html)
    - [3.113. const_pref_align_of](https://doc.rust-lang.org/unstable-book/library-features/const-pref-align-of.html)
    - [3.114. const_ptr_as_ref](https://doc.rust-lang.org/unstable-book/library-features/const-ptr-as-ref.html)
    - [3.115. const_ptr_is_null](https://doc.rust-lang.org/unstable-book/library-features/const-ptr-is-null.html)
    - [3.116. const_ptr_read](https://doc.rust-lang.org/unstable-book/library-features/const-ptr-read.html)
    - [3.117. const_ptr_sub_ptr](https://doc.rust-lang.org/unstable-book/library-features/const-ptr-sub-ptr.html)
    - [3.118. const_ptr_write](https://doc.rust-lang.org/unstable-book/library-features/const-ptr-write.html)
    - [3.119. const_raw_ptr_comparison](https://doc.rust-lang.org/unstable-book/library-features/const-raw-ptr-comparison.html)
    - [3.120. const_replace](https://doc.rust-lang.org/unstable-book/library-features/const-replace.html)
    - [3.121. const_result](https://doc.rust-lang.org/unstable-book/library-features/const-result.html)
    - [3.122. const_result_drop](https://doc.rust-lang.org/unstable-book/library-features/const-result-drop.html)
    - [3.123. const_reverse](https://doc.rust-lang.org/unstable-book/library-features/const-reverse.html)
    - [3.124. const_size_of_val](https://doc.rust-lang.org/unstable-book/library-features/const-size-of-val.html)
    - [3.125. const_size_of_val_raw](https://doc.rust-lang.org/unstable-book/library-features/const-size-of-val-raw.html)
    - [3.126. const_slice_first_last](https://doc.rust-lang.org/unstable-book/library-features/const-slice-first-last.html)
    - [3.127. const_slice_from_mut_ptr_range](https://doc.rust-lang.org/unstable-book/library-features/const-slice-from-mut-ptr-range.html)
    - [3.128. const_slice_from_ptr_range](https://doc.rust-lang.org/unstable-book/library-features/const-slice-from-ptr-range.html)
    - [3.129. const_slice_from_raw_parts_mut](https://doc.rust-lang.org/unstable-book/library-features/const-slice-from-raw-parts-mut.html)
    - [3.130. const_slice_from_ref](https://doc.rust-lang.org/unstable-book/library-features/const-slice-from-ref.html)
    - [3.131. const_slice_index](https://doc.rust-lang.org/unstable-book/library-features/const-slice-index.html)
    - [3.132. const_slice_ptr_len](https://doc.rust-lang.org/unstable-book/library-features/const-slice-ptr-len.html)
    - [3.133. const_slice_split_at_not_mut](https://doc.rust-lang.org/unstable-book/library-features/const-slice-split-at-not-mut.html)
    - [3.134. const_socketaddr](https://doc.rust-lang.org/unstable-book/library-features/const-socketaddr.html)
    - [3.135. const_str_from_utf8](https://doc.rust-lang.org/unstable-book/library-features/const-str-from-utf8.html)
    - [3.136. const_str_from_utf8_unchecked_mut](https://doc.rust-lang.org/unstable-book/library-features/const-str-from-utf8-unchecked-mut.html)
    - [3.137. const_swap](https://doc.rust-lang.org/unstable-book/library-features/const-swap.html)
    - [3.138. const_transmute_copy](https://doc.rust-lang.org/unstable-book/library-features/const-transmute-copy.html)
    - [3.139. const_type_id](https://doc.rust-lang.org/unstable-book/library-features/const-type-id.html)
    - [3.140. const_type_name](https://doc.rust-lang.org/unstable-book/library-features/const-type-name.html)
    - [3.141. const_unicode_case_lookup](https://doc.rust-lang.org/unstable-book/library-features/const-unicode-case-lookup.html)
    - [3.142. const_unsafecell_get_mut](https://doc.rust-lang.org/unstable-book/library-features/const-unsafecell-get-mut.html)
    - [3.143. const_weak_new](https://doc.rust-lang.org/unstable-book/library-features/const-weak-new.html)
    - [3.144. container_error_extra](https://doc.rust-lang.org/unstable-book/library-features/container-error-extra.html)
    - [3.145. control_flow_enum](https://doc.rust-lang.org/unstable-book/library-features/control-flow-enum.html)
    - [3.146. convert_float_to_int](https://doc.rust-lang.org/unstable-book/library-features/convert-float-to-int.html)
    - [3.147. core_intrinsics](https://doc.rust-lang.org/unstable-book/library-features/core-intrinsics.html)
    - [3.148. core_panic](https://doc.rust-lang.org/unstable-book/library-features/core-panic.html)
    - [3.149. core_private_bignum](https://doc.rust-lang.org/unstable-book/library-features/core-private-bignum.html)
    - [3.150. core_private_diy_float](https://doc.rust-lang.org/unstable-book/library-features/core-private-diy-float.html)
    - [3.151. cow_is_borrowed](https://doc.rust-lang.org/unstable-book/library-features/cow-is-borrowed.html)
    - [3.152. cstr_from_bytes_until_nul](https://doc.rust-lang.org/unstable-book/library-features/cstr-from-bytes-until-nul.html)
    - [3.153. cstr_internals](https://doc.rust-lang.org/unstable-book/library-features/cstr-internals.html)
    - [3.154. cursor_remaining](https://doc.rust-lang.org/unstable-book/library-features/cursor-remaining.html)
    - [3.155. deadline_api](https://doc.rust-lang.org/unstable-book/library-features/deadline-api.html)
    - [3.156. dec2flt](https://doc.rust-lang.org/unstable-book/library-features/dec2flt.html)
    - [3.157. default_free_fn](https://doc.rust-lang.org/unstable-book/library-features/default-free-fn.html)
    - [3.158. derive_clone_copy](https://doc.rust-lang.org/unstable-book/library-features/derive-clone-copy.html)
    - [3.159. derive_eq](https://doc.rust-lang.org/unstable-book/library-features/derive-eq.html)
    - [3.160. dir_entry_ext2](https://doc.rust-lang.org/unstable-book/library-features/dir-entry-ext2.html)
    - [3.161. discriminant_kind](https://doc.rust-lang.org/unstable-book/library-features/discriminant-kind.html)
    - [3.162. dispatch_from_dyn](https://doc.rust-lang.org/unstable-book/library-features/dispatch-from-dyn.html)
    - [3.163. div_duration](https://doc.rust-lang.org/unstable-book/library-features/div-duration.html)
    - [3.164. downcast_unchecked](https://doc.rust-lang.org/unstable-book/library-features/downcast-unchecked.html)
    - [3.165. drain_filter](https://doc.rust-lang.org/unstable-book/library-features/drain-filter.html)
    - [3.166. drain_keep_rest](https://doc.rust-lang.org/unstable-book/library-features/drain-keep-rest.html)
    - [3.167. duration_checked_float](https://doc.rust-lang.org/unstable-book/library-features/duration-checked-float.html)
    - [3.168. duration_constants](https://doc.rust-lang.org/unstable-book/library-features/duration-constants.html)
    - [3.169. duration_consts_float](https://doc.rust-lang.org/unstable-book/library-features/duration-consts-float.html)
    - [3.170. edition_panic](https://doc.rust-lang.org/unstable-book/library-features/edition-panic.html)
    - [3.171. entry_insert](https://doc.rust-lang.org/unstable-book/library-features/entry-insert.html)
    - [3.172. error_generic_member_access](https://doc.rust-lang.org/unstable-book/library-features/error-generic-member-access.html)
    - [3.173. error_in_core](https://doc.rust-lang.org/unstable-book/library-features/error-in-core.html)
    - [3.174. error_iter](https://doc.rust-lang.org/unstable-book/library-features/error-iter.html)
    - [3.175. error_reporter](https://doc.rust-lang.org/unstable-book/library-features/error-reporter.html)
    - [3.176. error_type_id](https://doc.rust-lang.org/unstable-book/library-features/error-type-id.html)
    - [3.177. exact_size_is_empty](https://doc.rust-lang.org/unstable-book/library-features/exact-size-is-empty.html)
    - [3.178. exclusive_wrapper](https://doc.rust-lang.org/unstable-book/library-features/exclusive-wrapper.html)
    - [3.179. exit_status_error](https://doc.rust-lang.org/unstable-book/library-features/exit-status-error.html)
    - [3.180. exitcode_exit_method](https://doc.rust-lang.org/unstable-book/library-features/exitcode-exit-method.html)
    - [3.181. extend_one](https://doc.rust-lang.org/unstable-book/library-features/extend-one.html)
    - [3.182. fd](https://doc.rust-lang.org/unstable-book/library-features/fd.html)
    - [3.183. fd_read](https://doc.rust-lang.org/unstable-book/library-features/fd-read.html)
    - [3.184. file_create_new](https://doc.rust-lang.org/unstable-book/library-features/file-create-new.html)
    - [3.185. file_set_times](https://doc.rust-lang.org/unstable-book/library-features/file-set-times.html)
    - [3.186. float_minimum_maximum](https://doc.rust-lang.org/unstable-book/library-features/float-minimum-maximum.html)
    - [3.187. float_next_up_down](https://doc.rust-lang.org/unstable-book/library-features/float-next-up-down.html)
    - [3.188. flt2dec](https://doc.rust-lang.org/unstable-book/library-features/flt2dec.html)
    - [3.189. fmt_helpers_for_derive](https://doc.rust-lang.org/unstable-book/library-features/fmt-helpers-for-derive.html)
    - [3.190. fmt_internals](https://doc.rust-lang.org/unstable-book/library-features/fmt-internals.html)
    - [3.191. fn_traits](https://doc.rust-lang.org/unstable-book/library-features/fn-traits.html)
    - [3.192. forget_unsized](https://doc.rust-lang.org/unstable-book/library-features/forget-unsized.html)
    - [3.193. format_args_nl](https://doc.rust-lang.org/unstable-book/library-features/format-args-nl.html)
    - [3.194. fs_try_exists](https://doc.rust-lang.org/unstable-book/library-features/fs-try-exists.html)
    - [3.195. future_join](https://doc.rust-lang.org/unstable-book/library-features/future-join.html)
    - [3.196. gen_future](https://doc.rust-lang.org/unstable-book/library-features/gen-future.html)
    - [3.197. generator_trait](https://doc.rust-lang.org/unstable-book/library-features/generator-trait.html)
    - [3.198. generic_assert_internals](https://doc.rust-lang.org/unstable-book/library-features/generic-assert-internals.html)
    - [3.199. get_mut_unchecked](https://doc.rust-lang.org/unstable-book/library-features/get-mut-unchecked.html)
    - [3.200. hash_drain_filter](https://doc.rust-lang.org/unstable-book/library-features/hash-drain-filter.html)
    - [3.201. hash_raw_entry](https://doc.rust-lang.org/unstable-book/library-features/hash-raw-entry.html)
    - [3.202. hash_set_entry](https://doc.rust-lang.org/unstable-book/library-features/hash-set-entry.html)
    - [3.203. hasher_prefixfree_extras](https://doc.rust-lang.org/unstable-book/library-features/hasher-prefixfree-extras.html)
    - [3.204. hashmap_internals](https://doc.rust-lang.org/unstable-book/library-features/hashmap-internals.html)
    - [3.205. hint_must_use](https://doc.rust-lang.org/unstable-book/library-features/hint-must-use.html)
    - [3.206. inplace_iteration](https://doc.rust-lang.org/unstable-book/library-features/inplace-iteration.html)
    - [3.207. int_error_internals](https://doc.rust-lang.org/unstable-book/library-features/int-error-internals.html)
    - [3.208. int_log](https://doc.rust-lang.org/unstable-book/library-features/int-log.html)
    - [3.209. int_roundings](https://doc.rust-lang.org/unstable-book/library-features/int-roundings.html)
    - [3.210. integer_atomics](https://doc.rust-lang.org/unstable-book/library-features/integer-atomics.html)
    - [3.211. internal_output_capture](https://doc.rust-lang.org/unstable-book/library-features/internal-output-capture.html)
    - [3.212. io_error_downcast](https://doc.rust-lang.org/unstable-book/library-features/io-error-downcast.html)
    - [3.213. io_error_more](https://doc.rust-lang.org/unstable-book/library-features/io-error-more.html)
    - [3.214. io_error_other](https://doc.rust-lang.org/unstable-book/library-features/io-error-other.html)
    - [3.215. io_error_uncategorized](https://doc.rust-lang.org/unstable-book/library-features/io-error-uncategorized.html)
    - [3.216. io_slice_advance](https://doc.rust-lang.org/unstable-book/library-features/io-slice-advance.html)
    - [3.217. ip](https://doc.rust-lang.org/unstable-book/library-features/ip.html)
    - [3.218. is_some_with](https://doc.rust-lang.org/unstable-book/library-features/is-some-with.html)
    - [3.219. is_sorted](https://doc.rust-lang.org/unstable-book/library-features/is-sorted.html)
    - [3.220. iter_advance_by](https://doc.rust-lang.org/unstable-book/library-features/iter-advance-by.html)
    - [3.221. iter_array_chunks](https://doc.rust-lang.org/unstable-book/library-features/iter-array-chunks.html)
    - [3.222. iter_collect_into](https://doc.rust-lang.org/unstable-book/library-features/iter-collect-into.html)
    - [3.223. iter_from_generator](https://doc.rust-lang.org/unstable-book/library-features/iter-from-generator.html)
    - [3.224. iter_intersperse](https://doc.rust-lang.org/unstable-book/library-features/iter-intersperse.html)
    - [3.225. iter_is_partitioned](https://doc.rust-lang.org/unstable-book/library-features/iter-is-partitioned.html)
    - [3.226. iter_next_chunk](https://doc.rust-lang.org/unstable-book/library-features/iter-next-chunk.html)
    - [3.227. iter_order_by](https://doc.rust-lang.org/unstable-book/library-features/iter-order-by.html)
    - [3.228. iter_partition_in_place](https://doc.rust-lang.org/unstable-book/library-features/iter-partition-in-place.html)
    - [3.229. iterator_try_collect](https://doc.rust-lang.org/unstable-book/library-features/iterator-try-collect.html)
    - [3.230. iterator_try_reduce](https://doc.rust-lang.org/unstable-book/library-features/iterator-try-reduce.html)
    - [3.231. layout_for_ptr](https://doc.rust-lang.org/unstable-book/library-features/layout-for-ptr.html)
    - [3.232. liballoc_internals](https://doc.rust-lang.org/unstable-book/library-features/liballoc-internals.html)
    - [3.233. libstd_sys_internals](https://doc.rust-lang.org/unstable-book/library-features/libstd-sys-internals.html)
    - [3.234. libstd_thread_internals](https://doc.rust-lang.org/unstable-book/library-features/libstd-thread-internals.html)
    - [3.235. linked_list_cursors](https://doc.rust-lang.org/unstable-book/library-features/linked-list-cursors.html)
    - [3.236. linked_list_remove](https://doc.rust-lang.org/unstable-book/library-features/linked-list-remove.html)
    - [3.237. linux_pidfd](https://doc.rust-lang.org/unstable-book/library-features/linux-pidfd.html)
    - [3.238. local_key_cell_methods](https://doc.rust-lang.org/unstable-book/library-features/local-key-cell-methods.html)
    - [3.239. log_syntax](https://doc.rust-lang.org/unstable-book/library-features/log-syntax.html)
    - [3.240. main_separator_str](https://doc.rust-lang.org/unstable-book/library-features/main-separator-str.html)
    - [3.241. map_entry_replace](https://doc.rust-lang.org/unstable-book/library-features/map-entry-replace.html)
    - [3.242. map_first_last](https://doc.rust-lang.org/unstable-book/library-features/map-first-last.html)
    - [3.243. map_many_mut](https://doc.rust-lang.org/unstable-book/library-features/map-many-mut.html)
    - [3.244. map_try_insert](https://doc.rust-lang.org/unstable-book/library-features/map-try-insert.html)
    - [3.245. maybe_uninit_array_assume_init](https://doc.rust-lang.org/unstable-book/library-features/maybe-uninit-array-assume-init.html)
    - [3.246. maybe_uninit_as_bytes](https://doc.rust-lang.org/unstable-book/library-features/maybe-uninit-as-bytes.html)
    - [3.247. maybe_uninit_slice](https://doc.rust-lang.org/unstable-book/library-features/maybe-uninit-slice.html)
    - [3.248. maybe_uninit_uninit_array](https://doc.rust-lang.org/unstable-book/library-features/maybe-uninit-uninit-array.html)
    - [3.249. maybe_uninit_write_slice](https://doc.rust-lang.org/unstable-book/library-features/maybe-uninit-write-slice.html)
    - [3.250. mem_copy_fn](https://doc.rust-lang.org/unstable-book/library-features/mem-copy-fn.html)
    - [3.251. mixed_integer_ops](https://doc.rust-lang.org/unstable-book/library-features/mixed-integer-ops.html)
    - [3.252. mutex_unlock](https://doc.rust-lang.org/unstable-book/library-features/mutex-unlock.html)
    - [3.253. mutex_unpoison](https://doc.rust-lang.org/unstable-book/library-features/mutex-unpoison.html)
    - [3.254. new_uninit](https://doc.rust-lang.org/unstable-book/library-features/new-uninit.html)
    - [3.255. nonnull_slice_from_raw_parts](https://doc.rust-lang.org/unstable-book/library-features/nonnull-slice-from-raw-parts.html)
    - [3.256. nonzero_bits](https://doc.rust-lang.org/unstable-book/library-features/nonzero-bits.html)
    - [3.257. nonzero_min_max](https://doc.rust-lang.org/unstable-book/library-features/nonzero-min-max.html)
    - [3.258. nonzero_ops](https://doc.rust-lang.org/unstable-book/library-features/nonzero-ops.html)
    - [3.259. numfmt](https://doc.rust-lang.org/unstable-book/library-features/numfmt.html)
    - [3.260. once_cell](https://doc.rust-lang.org/unstable-book/library-features/once-cell.html)
    - [3.261. one_sided_range](https://doc.rust-lang.org/unstable-book/library-features/one-sided-range.html)
    - [3.262. option_get_or_insert_default](https://doc.rust-lang.org/unstable-book/library-features/option-get-or-insert-default.html)
    - [3.263. option_result_contains](https://doc.rust-lang.org/unstable-book/library-features/option-result-contains.html)
    - [3.264. option_zip](https://doc.rust-lang.org/unstable-book/library-features/option-zip.html)
    - [3.265. panic_abort](https://doc.rust-lang.org/unstable-book/library-features/panic-abort.html)
    - [3.266. panic_always_abort](https://doc.rust-lang.org/unstable-book/library-features/panic-always-abort.html)
    - [3.267. panic_backtrace_config](https://doc.rust-lang.org/unstable-book/library-features/panic-backtrace-config.html)
    - [3.268. panic_can_unwind](https://doc.rust-lang.org/unstable-book/library-features/panic-can-unwind.html)
    - [3.269. panic_info_message](https://doc.rust-lang.org/unstable-book/library-features/panic-info-message.html)
    - [3.270. panic_internals](https://doc.rust-lang.org/unstable-book/library-features/panic-internals.html)
    - [3.271. panic_unwind](https://doc.rust-lang.org/unstable-book/library-features/panic-unwind.html)
    - [3.272. panic_update_hook](https://doc.rust-lang.org/unstable-book/library-features/panic-update-hook.html)
    - [3.273. path_file_prefix](https://doc.rust-lang.org/unstable-book/library-features/path-file-prefix.html)
    - [3.274. pattern](https://doc.rust-lang.org/unstable-book/library-features/pattern.html)
    - [3.275. peer_credentials_unix_socket](https://doc.rust-lang.org/unstable-book/library-features/peer-credentials-unix-socket.html)
    - [3.276. pin_deref_mut](https://doc.rust-lang.org/unstable-book/library-features/pin-deref-mut.html)
    - [3.277. pin_macro](https://doc.rust-lang.org/unstable-book/library-features/pin-macro.html)
    - [3.278. pointer_byte_offsets](https://doc.rust-lang.org/unstable-book/library-features/pointer-byte-offsets.html)
    - [3.279. pointer_is_aligned](https://doc.rust-lang.org/unstable-book/library-features/pointer-is-aligned.html)
    - [3.280. poll_ready](https://doc.rust-lang.org/unstable-book/library-features/poll-ready.html)
    - [3.281. portable_simd](https://doc.rust-lang.org/unstable-book/library-features/portable-simd.html)
    - [3.282. prelude_2024](https://doc.rust-lang.org/unstable-book/library-features/prelude-2024.html)
    - [3.283. print_internals](https://doc.rust-lang.org/unstable-book/library-features/print-internals.html)
    - [3.284. proc_macro_def_site](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-def-site.html)
    - [3.285. proc_macro_diagnostic](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-diagnostic.html)
    - [3.286. proc_macro_expand](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-expand.html)
    - [3.287. proc_macro_internals](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-internals.html)
    - [3.288. proc_macro_quote](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-quote.html)
    - [3.289. proc_macro_span](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-span.html)
    - [3.290. proc_macro_span_shrink](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-span-shrink.html)
    - [3.291. proc_macro_tracked_env](https://doc.rust-lang.org/unstable-book/library-features/proc-macro-tracked-env.html)
    - [3.292. process_exitcode_internals](https://doc.rust-lang.org/unstable-book/library-features/process-exitcode-internals.html)
    - [3.293. process_internals](https://doc.rust-lang.org/unstable-book/library-features/process-internals.html)
    - [3.294. profiler_runtime_lib](https://doc.rust-lang.org/unstable-book/library-features/profiler-runtime-lib.html)
    - [3.295. provide_any](https://doc.rust-lang.org/unstable-book/library-features/provide-any.html)
    - [3.296. ptr_as_uninit](https://doc.rust-lang.org/unstable-book/library-features/ptr-as-uninit.html)
    - [3.297. ptr_internals](https://doc.rust-lang.org/unstable-book/library-features/ptr-internals.html)
    - [3.298. ptr_mask](https://doc.rust-lang.org/unstable-book/library-features/ptr-mask.html)
    - [3.299. ptr_metadata](https://doc.rust-lang.org/unstable-book/library-features/ptr-metadata.html)
    - [3.300. ptr_sub_ptr](https://doc.rust-lang.org/unstable-book/library-features/ptr-sub-ptr.html)
    - [3.301. ptr_to_from_bits](https://doc.rust-lang.org/unstable-book/library-features/ptr-to-from-bits.html)
    - [3.302. pub_crate_should_not_need_unstable_attr](https://doc.rust-lang.org/unstable-book/library-features/pub-crate-should-not-need-unstable-attr.html)
    - [3.303. raw_os_nonzero](https://doc.rust-lang.org/unstable-book/library-features/raw-os-nonzero.html)
    - [3.304. raw_slice_split](https://doc.rust-lang.org/unstable-book/library-features/raw-slice-split.html)
    - [3.305. raw_vec_internals](https://doc.rust-lang.org/unstable-book/library-features/raw-vec-internals.html)
    - [3.306. read_buf](https://doc.rust-lang.org/unstable-book/library-features/read-buf.html)
    - [3.307. receiver_trait](https://doc.rust-lang.org/unstable-book/library-features/receiver-trait.html)
    - [3.308. restricted_std](https://doc.rust-lang.org/unstable-book/library-features/restricted-std.html)
    - [3.309. result_contains_err](https://doc.rust-lang.org/unstable-book/library-features/result-contains-err.html)
    - [3.310. result_flattening](https://doc.rust-lang.org/unstable-book/library-features/result-flattening.html)
    - [3.311. result_option_inspect](https://doc.rust-lang.org/unstable-book/library-features/result-option-inspect.html)
    - [3.312. round_char_boundary](https://doc.rust-lang.org/unstable-book/library-features/round-char-boundary.html)
    - [3.313. rt](https://doc.rust-lang.org/unstable-book/library-features/rt.html)
    - [3.314. saturating_int_assign_impl](https://doc.rust-lang.org/unstable-book/library-features/saturating-int-assign-impl.html)
    - [3.315. saturating_int_impl](https://doc.rust-lang.org/unstable-book/library-features/saturating-int-impl.html)
    - [3.316. sealed](https://doc.rust-lang.org/unstable-book/library-features/sealed.html)
    - [3.317. seek_stream_len](https://doc.rust-lang.org/unstable-book/library-features/seek-stream-len.html)
    - [3.318. set_ptr_value](https://doc.rust-lang.org/unstable-book/library-features/set-ptr-value.html)
    - [3.319. setgroups](https://doc.rust-lang.org/unstable-book/library-features/setgroups.html)
    - [3.320. sgx_platform](https://doc.rust-lang.org/unstable-book/library-features/sgx-platform.html)
    - [3.321. slice_as_chunks](https://doc.rust-lang.org/unstable-book/library-features/slice-as-chunks.html)
    - [3.322. slice_concat_ext](https://doc.rust-lang.org/unstable-book/library-features/slice-concat-ext.html)
    - [3.323. slice_concat_trait](https://doc.rust-lang.org/unstable-book/library-features/slice-concat-trait.html)
    - [3.324. slice_flatten](https://doc.rust-lang.org/unstable-book/library-features/slice-flatten.html)
    - [3.325. slice_from_ptr_range](https://doc.rust-lang.org/unstable-book/library-features/slice-from-ptr-range.html)
    - [3.326. slice_group_by](https://doc.rust-lang.org/unstable-book/library-features/slice-group-by.html)
    - [3.327. slice_index_methods](https://doc.rust-lang.org/unstable-book/library-features/slice-index-methods.html)
    - [3.328. slice_internals](https://doc.rust-lang.org/unstable-book/library-features/slice-internals.html)
    - [3.329. slice_iter_mut_as_mut_slice](https://doc.rust-lang.org/unstable-book/library-features/slice-iter-mut-as-mut-slice.html)
    - [3.330. slice_partition_dedup](https://doc.rust-lang.org/unstable-book/library-features/slice-partition-dedup.html)
    - [3.331. slice_pattern](https://doc.rust-lang.org/unstable-book/library-features/slice-pattern.html)
    - [3.332. slice_ptr_get](https://doc.rust-lang.org/unstable-book/library-features/slice-ptr-get.html)
    - [3.333. slice_ptr_len](https://doc.rust-lang.org/unstable-book/library-features/slice-ptr-len.html)
    - [3.334. slice_range](https://doc.rust-lang.org/unstable-book/library-features/slice-range.html)
    - [3.335. slice_split_at_unchecked](https://doc.rust-lang.org/unstable-book/library-features/slice-split-at-unchecked.html)
    - [3.336. slice_swap_unchecked](https://doc.rust-lang.org/unstable-book/library-features/slice-swap-unchecked.html)
    - [3.337. slice_take](https://doc.rust-lang.org/unstable-book/library-features/slice-take.html)
    - [3.338. solid_ext](https://doc.rust-lang.org/unstable-book/library-features/solid-ext.html)
    - [3.339. sort_floats](https://doc.rust-lang.org/unstable-book/library-features/sort-floats.html)
    - [3.340. sort_internals](https://doc.rust-lang.org/unstable-book/library-features/sort-internals.html)
    - [3.341. split_array](https://doc.rust-lang.org/unstable-book/library-features/split-array.html)
    - [3.342. split_as_slice](https://doc.rust-lang.org/unstable-book/library-features/split-as-slice.html)
    - [3.343. std_internals](https://doc.rust-lang.org/unstable-book/library-features/std-internals.html)
    - [3.344. stdio_makes_pipe](https://doc.rust-lang.org/unstable-book/library-features/stdio-makes-pipe.html)
    - [3.345. stdsimd](https://doc.rust-lang.org/unstable-book/library-features/stdsimd.html)
    - [3.346. step_trait](https://doc.rust-lang.org/unstable-book/library-features/step-trait.html)
    - [3.347. str_internals](https://doc.rust-lang.org/unstable-book/library-features/str-internals.html)
    - [3.348. str_split_as_str](https://doc.rust-lang.org/unstable-book/library-features/str-split-as-str.html)
    - [3.349. str_split_inclusive_as_str](https://doc.rust-lang.org/unstable-book/library-features/str-split-inclusive-as-str.html)
    - [3.350. str_split_whitespace_as_str](https://doc.rust-lang.org/unstable-book/library-features/str-split-whitespace-as-str.html)
    - [3.351. strict_provenance_atomic_ptr](https://doc.rust-lang.org/unstable-book/library-features/strict-provenance-atomic-ptr.html)
    - [3.352. string_extend_from_within](https://doc.rust-lang.org/unstable-book/library-features/string-extend-from-within.html)
    - [3.353. string_remove_matches](https://doc.rust-lang.org/unstable-book/library-features/string-remove-matches.html)
    - [3.354. sync_unsafe_cell](https://doc.rust-lang.org/unstable-book/library-features/sync-unsafe-cell.html)
    - [3.355. tcp_linger](https://doc.rust-lang.org/unstable-book/library-features/tcp-linger.html)
    - [3.356. tcp_quickack](https://doc.rust-lang.org/unstable-book/library-features/tcp-quickack.html)
    - [3.357. tcplistener_into_incoming](https://doc.rust-lang.org/unstable-book/library-features/tcplistener-into-incoming.html)
    - [3.358. test](https://doc.rust-lang.org/unstable-book/library-features/test.html)
    - [3.359. thin_box](https://doc.rust-lang.org/unstable-book/library-features/thin-box.html)
    - [3.360. thread_id_value](https://doc.rust-lang.org/unstable-book/library-features/thread-id-value.html)
    - [3.361. thread_local_internals](https://doc.rust-lang.org/unstable-book/library-features/thread-local-internals.html)
    - [3.362. thread_spawn_unchecked](https://doc.rust-lang.org/unstable-book/library-features/thread-spawn-unchecked.html)
    - [3.363. trace_macros](https://doc.rust-lang.org/unstable-book/library-features/trace-macros.html)
    - [3.364. track_path](https://doc.rust-lang.org/unstable-book/library-features/track-path.html)
    - [3.365. transmutability](https://doc.rust-lang.org/unstable-book/library-features/transmutability.html)
    - [3.366. trusted_len](https://doc.rust-lang.org/unstable-book/library-features/trusted-len.html)
    - [3.367. trusted_random_access](https://doc.rust-lang.org/unstable-book/library-features/trusted-random-access.html)
    - [3.368. trusted_step](https://doc.rust-lang.org/unstable-book/library-features/trusted-step.html)
    - [3.369. try_find](https://doc.rust-lang.org/unstable-book/library-features/try-find.html)
    - [3.370. try_reserve_kind](https://doc.rust-lang.org/unstable-book/library-features/try-reserve-kind.html)
    - [3.371. try_trait_v2](https://doc.rust-lang.org/unstable-book/library-features/try-trait-v2.html)
    - [3.372. try_trait_v2_residual](https://doc.rust-lang.org/unstable-book/library-features/try-trait-v2-residual.html)
    - [3.373. try_trait_v2_yeet](https://doc.rust-lang.org/unstable-book/library-features/try-trait-v2-yeet.html)
    - [3.374. tuple_trait](https://doc.rust-lang.org/unstable-book/library-features/tuple-trait.html)
    - [3.375. type_name_of_val](https://doc.rust-lang.org/unstable-book/library-features/type-name-of-val.html)
    - [3.376. unchecked_math](https://doc.rust-lang.org/unstable-book/library-features/unchecked-math.html)
    - [3.377. unicode_internals](https://doc.rust-lang.org/unstable-book/library-features/unicode-internals.html)
    - [3.378. unix_chown](https://doc.rust-lang.org/unstable-book/library-features/unix-chown.html)
    - [3.379. unix_set_mark](https://doc.rust-lang.org/unstable-book/library-features/unix-set-mark.html)
    - [3.380. unix_socket_abstract](https://doc.rust-lang.org/unstable-book/library-features/unix-socket-abstract.html)
    - [3.381. unix_socket_ancillary_data](https://doc.rust-lang.org/unstable-book/library-features/unix-socket-ancillary-data.html)
    - [3.382. unix_socket_peek](https://doc.rust-lang.org/unstable-book/library-features/unix-socket-peek.html)
    - [3.383. unsize](https://doc.rust-lang.org/unstable-book/library-features/unsize.html)
    - [3.384. unwrap_infallible](https://doc.rust-lang.org/unstable-book/library-features/unwrap-infallible.html)
    - [3.385. unzip_option](https://doc.rust-lang.org/unstable-book/library-features/unzip-option.html)
    - [3.386. update_panic_count](https://doc.rust-lang.org/unstable-book/library-features/update-panic-count.html)
    - [3.387. utf16_extra](https://doc.rust-lang.org/unstable-book/library-features/utf16-extra.html)
    - [3.388. utf16_extra_const](https://doc.rust-lang.org/unstable-book/library-features/utf16-extra-const.html)
    - [3.389. utf8_chunks](https://doc.rust-lang.org/unstable-book/library-features/utf8-chunks.html)
    - [3.390. variant_count](https://doc.rust-lang.org/unstable-book/library-features/variant-count.html)
    - [3.391. vec_into_raw_parts](https://doc.rust-lang.org/unstable-book/library-features/vec-into-raw-parts.html)
    - [3.392. vec_split_at_spare](https://doc.rust-lang.org/unstable-book/library-features/vec-split-at-spare.html)
    - [3.393. waker_getters](https://doc.rust-lang.org/unstable-book/library-features/waker-getters.html)
    - [3.394. wasi_ext](https://doc.rust-lang.org/unstable-book/library-features/wasi-ext.html)
    - [3.395. windows_by_handle](https://doc.rust-lang.org/unstable-book/library-features/windows-by-handle.html)
    - [3.396. windows_c](https://doc.rust-lang.org/unstable-book/library-features/windows-c.html)
    - [3.397. windows_handle](https://doc.rust-lang.org/unstable-book/library-features/windows-handle.html)
    - [3.398. windows_net](https://doc.rust-lang.org/unstable-book/library-features/windows-net.html)
    - [3.399. windows_process_exit_code_from](https://doc.rust-lang.org/unstable-book/library-features/windows-process-exit-code-from.html)
    - [3.400. windows_process_extensions_async_pipes](https://doc.rust-lang.org/unstable-book/library-features/windows-process-extensions-async-pipes.html)
    - [3.401. windows_process_extensions_force_quotes](https://doc.rust-lang.org/unstable-book/library-features/windows-process-extensions-force-quotes.html)
    - [3.402. windows_process_extensions_main_thread_handle](https://doc.rust-lang.org/unstable-book/library-features/windows-process-extensions-main-thread-handle.html)
    - [3.403. windows_stdio](https://doc.rust-lang.org/unstable-book/library-features/windows-stdio.html)
    - [3.404. wrapping_int_impl](https://doc.rust-lang.org/unstable-book/library-features/wrapping-int-impl.html)
    - [3.405. wrapping_next_power_of_two](https://doc.rust-lang.org/unstable-book/library-features/wrapping-next-power-of-two.html)
    - [3.406. write_all_vectored](https://doc.rust-lang.org/unstable-book/library-features/write-all-vectored.html)
    - [3.407. yeet_desugar_details](https://doc.rust-lang.org/unstable-book/library-features/yeet-desugar-details.html)


## 🟢🔵The WebAssembly System Interface (WASI)

- [Introduction](wasmtime/docs/introduction.md)
- [Tutorial](wasmtime/docs/tutorial.md)
  - [Creating `hello-world.wasm`](wasmtime/docs/tutorial-create-hello-world.md)
  - [Running `hello-world.wasm`](wasmtime/docs/tutorial-run-hello-world.md)
- [Examples](wasmtime/docs/examples.md)
  - [Markdown Parser](wasmtime/docs/examples-markdown.md)
  - [Debugging WebAssembly](wasmtime/docs/examples-debugging.md)
  - [Profiling WebAssembly](wasmtime/docs/examples-profiling.md)
    - [Profiling with Perf](wasmtime/docs/examples-profiling-perf.md)
    - [Profiling with VTune](wasmtime/docs/examples-profiling-vtune.md)
  - [Embedding in Rust](wasmtime/docs/examples-rust-embed.md)
    - [Hello, world!](wasmtime/docs/examples-rust-hello-world.md)
    - [Calculating the GCD](wasmtime/docs/examples-rust-gcd.md)
    - [Using Linear Memory](wasmtime/docs/examples-rust-memory.md)
    - [WASI](wasmtime/docs/examples-rust-wasi.md)
    - [Linking Modules](wasmtime/docs/examples-rust-linking.md)
    - [Debugging](wasmtime/docs/examples-rust-debugging.md)
    - [Using Multi-Value](wasmtime/docs/examples-rust-multi-value.md)
  - [Embedding in C](wasmtime/docs/examples-c-embed.md)
    - [Hello, World!](wasmtime/docs/examples-c-hello-world.md)
    - [Calculating the GCD](wasmtime/docs/examples-c-gcd.md)
    - [Using Linear Memory](wasmtime/docs/examples-c-memory.md)
    - [WASI](wasmtime/docs/examples-c-wasi.md)
    - [Linking Modules](wasmtime/docs/examples-c-linking.md)
    - [Debugging](wasmtime/docs/examples-c-debugging.md)
    - [Using Multi-Value](wasmtime/docs/examples-c-multi-value.md)
- [Using WebAssembly from your language](wasmtime/docs/lang.md)
  - [Rust](wasmtime/docs/lang-rust.md)
  - [C](wasmtime/docs/lang-c.md)
  - [Python](wasmtime/docs/lang-python.md)
  - [.NET](wasmtime/docs/lang-dotnet.md)
  - [Go](wasmtime/docs/lang-go.md)
  - [Bash](wasmtime/docs/lang-bash.md)
- [Using the `wasmtime` CLI](wasmtime/docs/cli.md)
  - [Installation](wasmtime/docs/cli-install.md)
  - [CLI Options](wasmtime/docs/cli-options.md)
  - [Cache Configuration](wasmtime/docs/cli-cache.md)
- [Writing WebAssembly](wasmtime/docs/wasm.md)
  - [Rust](wasmtime/docs/wasm-rust.md)
  - [C/C++](wasmtime/docs/wasm-c.md)
  - [AssemblyScript](wasmtime/docs/wasm-assemblyscript.md)
  - [WebAssembly Text Format (`*.wat`)](wasmtime/docs/wasm-wat.md)
- [Stability](stability.md)
  - [Release Process](wasmtime/docs/stability-release.md)
  - [Tiers of support](wasmtime/docs/stability-tiers.md)
  - [Platform Support](wasmtime/docs/stability-platform-support.md)
  - [Wasm Proposals Support](wasmtime/docs/stability-wasm-proposals-support.md)
- [Security](security.md)
  - [Disclosure Policy](wasmtime/docs/security-disclosure.md)
- [Contributing](contributing.md)
  - [Architecture](wasmtime/docs/contributing-architecture.md)
  - [Building](wasmtime/docs/contributing-building.md)
  - [Testing](wasmtime/docs/contributing-testing.md)
  - [Fuzzing](wasmtime/docs/contributing-fuzzing.md)
  - [CI](wasmtime/docs/contributing-ci.md)
  - [Cross Compiling](wasmtime/docs/contributing-cross-compiling.md)
  - [Coding Guidelines](wasmtime/docs/contributing-coding-guidelines.md)
  - [Development Process](wasmtime/docs/contributing-development-process.md)
  - [Release Process](wasmtime/docs/contributing-release-process.md)
  - [Implementing Wasm Proposals](wasmtime/docs/contributing-implementing-wasm-proposals.md)
  - [Governance](wasmtime/docs/contributing-governance.md)
  - [Code of Conduct](wasmtime/docs/contributing-coc.md)


## 🟢🔵The `wasm-bindgen` Guide

[Introduction](wasm-bindgen/guide/src/introduction.md)

--------------------------------------------------------------------------------

- [Examples](wasm-bindgen/guide/src/examples/index.md)
  - [Hello, World!](wasm-bindgen/guide/src/examples/hello-world.md)
  - [Using `console.log`](wasm-bindgen/guide/src/examples/console-log.md)
  - [Small wasm files](wasm-bindgen/guide/src/examples/add.md)
  - [Without a Bundler](wasm-bindgen/guide/src/examples/without-a-bundler.md)
  - [Converting WebAssembly to JS](wasm-bindgen/guide/src/examples/wasm2js.md)
  - [Importing functions from JS](wasm-bindgen/guide/src/examples/import-js.md)
  - [Working with `char`](wasm-bindgen/guide/src/examples/char.md)
  - [js-sys: WebAssembly in WebAssembly](wasm-bindgen/guide/src/examples/wasm-in-wasm.md)
  - [web-sys: DOM hello world](wasm-bindgen/guide/src/examples/dom.md)
  - [web-sys: Closures](wasm-bindgen/guide/src/examples/closures.md)
  - [web-sys: `performance.now`](wasm-bindgen/guide/src/examples/performance.md)
  - [web-sys: using `fetch`](wasm-bindgen/guide/src/examples/fetch.md)
  - [web-sys: `canvas` hello world](wasm-bindgen/guide/src/examples/2d-canvas.md)
  - [web-sys: `canvas` Julia set](wasm-bindgen/guide/src/examples/julia.md)
  - [web-sys: WebAudio](wasm-bindgen/guide/src/examples/web-audio.md)
  - [web-sys: WebGL](wasm-bindgen/guide/src/examples/webgl.md)
  - [web-sys: WebSockets](wasm-bindgen/guide/src/examples/websockets.md)
  - [web-sys: WebRTC DataChannel](wasm-bindgen/guide/src/examples/webrtc_datachannel.md)
  - [web-sys: `requestAnimationFrame`](wasm-bindgen/guide/src/examples/request-animation-frame.md)
  - [web-sys: A Simple Paint Program](wasm-bindgen/guide/src/examples/paint.md)
  - [web-sys: WASM in Web Worker](wasm-bindgen/guide/src/examples/wasm-in-web-worker.md)
  - [Parallel Raytracing](wasm-bindgen/guide/src/examples/raytrace.md)
  - [WASM Audio Worklet](wasm-bindgen/guide/src/examples/wasm-audio-worklet.md)
  - [web-sys: A TODO MVC App](wasm-bindgen/guide/src/examples/todomvc.md)
- [Reference](wasm-bindgen/guide/src/reference/index.md)
  - [Deployment](wasm-bindgen/guide/src/reference/deployment.md)
  - [JS snippets](wasm-bindgen/guide/src/reference/js-snippets.md)
  - [Static JS Objects](wasm-bindgen/guide/src/reference/static-js-objects.md)
  - [Passing Rust Closures to JS](wasm-bindgen/guide/src/reference/passing-rust-closures-to-js.md)
  - [Receiving JS Closures in Rust](wasm-bindgen/guide/src/reference/receiving-js-closures-in-rust.md)
  - [`Promise`s and `Future`s](wasm-bindgen/guide/src/reference/js-promises-and-rust-futures.md)
  - [Iterating over JS Values](wasm-bindgen/guide/src/reference/iterating-over-js-values.md)
  - [Arbitrary Data with Serde](wasm-bindgen/guide/src/reference/arbitrary-data-with-serde.md)
  - [Accessing Properties of Untyped JS Values](wasm-bindgen/guide/src/reference/accessing-properties-of-untyped-js-values.md)
  - [Working with Duck-Typed Interfaces](wasm-bindgen/guide/src/reference/working-with-duck-typed-interfaces.md)
  - [Command Line Interface](wasm-bindgen/guide/src/reference/cli.md)
  - [Optimizing for Size](wasm-bindgen/guide/src/reference/optimize-size.md)
  - [Supported Rust Targets](wasm-bindgen/guide/src/reference/rust-targets.md)
  - [Supported Browsers](wasm-bindgen/guide/src/reference/browser-support.md)
  - [Support for Weak References](wasm-bindgen/guide/src/reference/weak-references.md)
  - [Support for Reference Types](wasm-bindgen/guide/src/reference/reference-types.md)
  - [Supported Types](wasm-bindgen/guide/src/reference/types.md)
    - [Imported JavaScript Types](wasm-bindgen/guide/src/reference/types/imported-js-types.md)
    - [Exported Rust Types](wasm-bindgen/guide/src/reference/types/exported-rust-types.md)
    - [`JsValue`](wasm-bindgen/guide/src/reference/types/jsvalue.md)
    - [`Box<[JsValue]>`](wasm-bindgen/guide/src/reference/types/boxed-jsvalue-slice.md)
    - [`*const T` and `*mut T`](wasm-bindgen/guide/src/reference/types/pointers.md)
    - [Numbers](wasm-bindgen/guide/src/reference/types/numbers.md)
    - [`bool`](wasm-bindgen/guide/src/reference/types/bool.md)
    - [`char`](wasm-bindgen/guide/src/reference/types/char.md)
    - [`str`](wasm-bindgen/guide/src/reference/types/str.md)
    - [`String`](wasm-bindgen/guide/src/reference/types/string.md)
    - [Number Slices](wasm-bindgen/guide/src/reference/types/number-slices.md)
    - [Boxed Number Slices](wasm-bindgen/guide/src/reference/types/boxed-number-slices.md)
    - [`Result<T, E>`](wasm-bindgen/guide/src/reference/types/result.md)
  - [`#[wasm_bindgen]` Attributes](wasm-bindgen/guide/src/reference/attributes/index.md)
    - [On JavaScript Imports](wasm-bindgen/guide/src/reference/attributes/on-js-imports/index.md)
      - [`catch`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/catch.md)
      - [`constructor`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/constructor.md)
      - [`extends`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/extends.md)
      - [`getter` and `setter`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/getter-and-setter.md)
      - [`final`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/final.md)
      - [`indexing_getter`, `indexing_setter`, and `indexing_deleter`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/indexing-getter-setter-deleter.md)
      - [`js_class = "Blah"`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/js_class.md)
      - [`js_name`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/js_name.md)
      - [`js_namespace`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/js_namespace.md)
      - [`method`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/method.md)
      - [`module = "blah"`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/module.md)
      - [`raw_module = "blah"`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/raw_module.md)
      - [`static_method_of = Blah`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/static_method_of.md)
      - [`structural`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/structural.md)
      - [`variadic`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/variadic.md)
      - [`vendor_prefix`](wasm-bindgen/guide/src/reference/attributes/on-js-imports/vendor_prefix.md)
    - [On Rust Exports](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/index.md)
      - [`constructor`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/constructor.md)
      - [`js_name = Blah`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/js_name.md)
      - [`readonly`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/readonly.md)
      - [`skip`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/skip.md)
      - [`start`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/start.md)
      - [`typescript_custom_section`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/typescript_custom_section.md)
      - [`getter` and `setter`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/getter-and-setter.md)
      - [`inspectable`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/inspectable.md)
      - [`skip_typescript`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/skip_typescript.md)
      - [`typescript_type`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/typescript_type.md)
      - [`getter_with_clone`](wasm-bindgen/guide/src/reference/attributes/on-rust-exports/getter_with_clone.md)

- [`web-sys`](wasm-bindgen/guide/src/web-sys/index.md)
  - [Using `web-sys`](wasm-bindgen/guide/src/web-sys/using-web-sys.md)
  - [Cargo Features](wasm-bindgen/guide/src/web-sys/cargo-features.md)
  - [Function Overloads](wasm-bindgen/guide/src/web-sys/function-overloads.md)
  - [Type Translations](wasm-bindgen/guide/src/web-sys/type-translations.md)
  - [Inheritance](wasm-bindgen/guide/src/web-sys/inheritance.md)
  - [Unstable APIs](wasm-bindgen/guide/src/web-sys/unstable-apis.md)

- [Testing with `wasm-bindgen-test`](wasm-bindgen/guide/src/wasm-bindgen-test/index.md)
  - [Usage](wasm-bindgen/guide/src/wasm-bindgen-test/usage.md)
  - [Writing Asynchronous Tests](wasm-bindgen/guide/src/wasm-bindgen-test/asynchronous-tests.md)
  - [Testing in Headless Browsers](wasm-bindgen/guide/src/wasm-bindgen-test/browsers.md)
  - [Continuous Integration](wasm-bindgen/guide/src/wasm-bindgen-test/continuous-integration.md)

- [Contributing to `wasm-bindgen`](wasm-bindgen/guide/src/contributing/index.md)
  - [Testing](wasm-bindgen/guide/src/contributing/testing.md)
  - [Internal Design](wasm-bindgen/guide/src/contributing/design/index.md)
    - [JS Objects in Rust](wasm-bindgen/guide/src/contributing/design/js-objects-in-rust.md)
    - [Exporting a function to JS](wasm-bindgen/guide/src/contributing/design/exporting-rust.md)
    - [Exporting a struct to JS](wasm-bindgen/guide/src/contributing/design/exporting-rust-struct.md)
    - [Importing a function from JS](wasm-bindgen/guide/src/contributing/design/importing-js.md)
    - [Importing a class from JS](wasm-bindgen/guide/src/contributing/design/importing-js-struct.md)
    - [Rust Type conversions](wasm-bindgen/guide/src/contributing/design/rust-type-conversions.md)
    - [Types in `wasm-bindgen`](wasm-bindgen/guide/src/contributing/design/describe.md)
  - [`js-sys`](wasm-bindgen/guide/src/contributing/js-sys/index.md)
    - [Testing](wasm-bindgen/guide/src/contributing/js-sys/testing.md)
    - [Adding More APIs](wasm-bindgen/guide/src/contributing/js-sys/adding-more-apis.md)
  - [`web-sys`](wasm-bindgen/guide/src/contributing/web-sys/index.md)
    - [Overview](wasm-bindgen/guide/src/contributing/web-sys/overview.md)
    - [Testing](wasm-bindgen/guide/src/contributing/web-sys/testing.md)
    - [Logging](wasm-bindgen/guide/src/contributing/web-sys/logging.md)
    - [Supporting More Web APIs](wasm-bindgen/guide/src/contributing/web-sys/supporting-more-web-apis.md)
  - [Publishing](wasm-bindgen/guide/src/contributing/publishing.md)
  - [Team](wasm-bindgen/guide/src/contributing/team.md)


## 🟢🔵 Compilers Principles
- Crafting Interpreters - A handbook for making programming languages http://www.craftinginter-preters.com/contents.html
- Compilers: Principles, Techniques, and Tools 2nd - Dragon book 编译原理龙书
- 编译原理（哈工大） https://www.bilibili.com/video/av17649289

- Table of Contents

- 1 Introduction
- 2 A Simple Syntax-Directed Translator
- 3 Lexical Analysis
- 4 Syntax Analysis
- 5 Syntax-Directed Translation
- 7 Run-Time Environments 427
- 8 Code Generation
- 9 Machine-Independent Optimizations
- 10 Instruction-Level Parallelism
- 11 Optimizing for Parallelism and Locality
- 12 Interprocedural Analysis
- A A Complete Front End
- B Finding Linearly Independent Solutions


- 1 Introduction
    - 1.1 Language Processors
        - 1.1.1 Exercises for Section 1.1
    - 1.2 The Structure of a Compiler
        - 1.2.1 Lexical Analysis
        - 1.2.2 Syntax Analysis
        - 1.2.3 Semantic Analysis
        - 1.2.4 Intermediate Code Generation
        - 1.2.5 Code Optimization
        - 1.2.6 Code Generation
        - 1.2.7 Symbol-Table Management
        - 1.2.8 The Grouping of Phases into Passes
        - 1.2.9 Compiler-Construction Tools
    - 1.3 The Evolution of Programming Languages
        - 1.3.1 The Move to Higher-level Languages
        - 1.3.2 Impacts on Compilers
        - 1.3.3 Exercises for Section 1.3
    - 1.4 The Science of Building a Compiler
        - 1.4.1 Modeling in Compiler Design and Implementation
        - 1.4.2 The Science of Code Optimization
    - 1.5 Applications of Compiler Technology
        - 1.5.1 Implementation of High-Level Programming Languages
        - 1.5.2 Optimizations for Computer Architectures
        - 1.5.3 Design of New Computer Architectures
        - 1.5.4 Program Translations
        - 1.5.5 Software Productivity Tools
    - 1.6 Programming Language Basics
        - 1.6.1 The Static/Dynamic Distinction
        - 1.6.2 Environments and States
        - 1.6.3 Static Scope and Block Structure
        - 1.6.4 Explicit Access Control
        - 1.6.5 Dynamic Scope
        - 1.6.6 Parameter Passing Mechanisms
        - 1.6.7 Aliasing
        - 1.6.8 Exercises for Section 1.6
    - 1.7 Summary of Chapter 1
    - 1.8 References for Chapter 1
- 2 A Simple Syntax-Directed Translator
    - 2.1 Introduction
    - 2.2 Syntax Definition
        - 2.2.1 Definition of Grammars
        - 2.2.2 Derivations
        - 2.2.3 Parse Trees
        - 2.2.4 Ambiguity
        - 2.2.5 Associativity of Operators
        - 2.2.6 Precedence of Operators
        - 2.2.7 Exercises for Section 2.2
    - 2.3 Syntax-Directed Translation
        - 2.3.1 Postfix Notation
        - 2.3.2 Synthesized Attributes
        - 2.3.3 Simple Syntax-Directed Definitions
        - 2.3.4 Tree Traversals
        - 2.3.5 Translation Schemes
        - 2.3.6 Exercises for Section 2.3
    - 2.4 Parsing
        - 2.4.1 Top-Down Parsing
        - 2.4.2 Predictive Parsing
        - 2.4.3 When to Use c-Productions
        - 2.4.4 Designing a Predictive Parser
        - 2.4.5 Left Recursion
        - 2.4.6 Exercises for Section 2.4
    - 2.5 A Translator for Simple Expressions
        - 2.5.1 Abstract and Concrete Syntax
        - 2.5.2 Adapting the Translation Scheme
        - 2.5.3 Procedures for the Nonterminals
        - 2.5.4 Simplifying the Translator
        - 2.5.5 The Complete Program
    - 2.6 Lexical Analysis
        - 2.6.1 Removal of White Space and Comments
        - 2.6.2 Reading Ahead
        - 2.6.3 Constants
        - 2.6.4 Recognizing Keywords and Identifiers
        - 2.6.5 A Lexical Analyzer
        - 2.6.6 Exercises for Section 2.6
    - 2.7 Symbol Tables
        - 2.7.1 Symbol Table Per Scope
        - 2.7.2 The Use of Symbol Tables
    - 2.8 Intermediate Code Generation
        - 2.8.1 Two Kinds of Intermediate Representations
        - 2.8.2 Construction of Syntax Trees
        - 2.8.3 Static Checking
        - 2.8.4 Three-Address Code
        - 2.8.5 Exercises for Section 2.8
    - 2.9 Summary of Chapter 2
- 3 Lexical Analysis
    - 3.1 The Role of the Lexical Analyzer
        - 3.1.1 Lexical Analysis Versus Parsing
        - 3.1.2 Tokens, Patterns, and Lexemes
        - 3.1.3 Attributes for Tokens
        - 3.1.4 Lexical Errors
        - 3.1.5 Exercises for Section 3.1
    - 3.2 Input Buffering
        - 3.2.1 Buffer Pairs
        - 3.2.2 Sentinels
    - 3.3 Specification of Tokens
    - 3.4 Recognition of Tokens
    - 3.5 The Lexical - Analyzer Generator Lex
        - 3.3.1 Strings and Languages
        - 3.3.2 Operations on Languages
        - 3.3.3 Regular Expressions
        - 3.3.4 Regular Definitions
        - 3.3.5 Extensions of Regular Expressions
        - 3.3.6 Exercises for Section 3.3
        - 3.4.1 Transition Diagrams
        - 3.4.2 Recognition of Reserved Words and Identifiers
        - 3.4.3 Completion of the Running Example
        - 3.4.4 Architecture of a Transition-Diagram-Based Lexical Analyzer
        - 3.4.5 Exercises for Section 3.4
        - 3.5.1 Use of Lex
        - 3.5.2 Structure of Lex Programs
        - 3.5.3 Conflict Resolution in Lex
        - 3.5.4 The Lookahead Operator
        - 3.5.5 Exercises for Section 3.5
    - 3.6 Finite Automata
        - 3.6.1 Nondeterministic Finite Automata
        - 3.6.2 Transition Tables
        - 3.6.3 Acceptance of Input Strings by Automata
        - 3.6.4 Deterministic Finite Automata
        - 3.6.5 Exercises for Section 3.6
    - 3.7 From Regular Expressions to Automata
        - 3.7.1 Conversion of an NFA to a DFA
        - 3.7.2 Simulation of an NFA
        - 3.7.3 Efficiency of NFA Simulation
        - 3.7.4 Construction of an NFA from a Regular Expression
        - 3.7.5 Efficiency of String- Processing Algorithms
        - 3.7.6 Exercises for Section 3.7
    - 3.8 Design of a Lexical-Analyzer Generator
        - 3.8.1 The Structure of the Generated Analyzer
        - 3.8.2 Pattern Matching Based on NFA's
        - 3.8.3 DFA's for Lexical Analyzers
        - 3.8.4 Implementing the Lookahead Operator
        - 3.8.5 Exercises for Section 3.8
    - 3.9 Optimization of DFA-Based Pattern Matchers
        - 3.9.1 Important States of an NFA
        - 3.9.2 Functions Computed From the Syntax Tree
        - 3.9.3 Computing nullable, jirstpos, and lastpos
        - 3.9.4 Computing Jollowpos
        - 3.9.5 Converting a Regular Expression Directly to a DFA
        - 3.9.6 Minimizing the Number of States of a DFA
        - 3.9.7 State Minimization in Lexical Analyzers
        - 3.9.8 Trading Time for Space in DFA Simulation
        - 3.9.9 Exercises for Section 3.9
    - 3.10 Summary of Chapter 3
    - 3.11 References for Chapter 3
- 4 Syntax Analysis
    - 4.1 Introduction
        - 4.1.1 The Role of the Parser
        - 4.1.2 Representative Grammars
        - 4.1.3 Syntax Error Handling
        - 4.1.4 Error-Recovery Strategies
    - 4.2 Context-Free Grammars
        - 4.2.1 The Formal Definition of a Context-Free Grammar
        - 4.2.2 Notational Conventions
        - 4.2.3 Derivations
        - 4.2.4 Parse Trees and Derivations
        - 4.2.5 Ambiguity
        - 4.2.6 Verifying the Language Generated by a Grammar
        - 4.2.7 Context-Free Grammars Versus Regular Expressions
        - 4.2.8 Exercises for Section 4.2
    - 4.3 Writing a Grammar
        - 4.3.1 Lexical Vers us Syntactic Analysis
        - 4.3.2 Eliminating Ambiguity
        - 4.3.3 Elimination of Left Recursion
        - 4.3.4 Left Factoring
        - 4.3.5 Non-Context-Free Language Constructs
        - 4.3.6 Exercises for Section 4.3
    - 4.4 Top-Down Parsing
        - 4.4.1 Recursive-Descent Parsing
        - 4.4.2 FIRST and FOLLOW
        - 4.4.3 LL(l) Grammars
        - 4.4.4 Nonrecursive Predictive Parsing
        - 4.4.5 Error Recovery in Predictive Parsing
        - 4.4.6 Exercises for Section 4.4
    - 4.5 Bottom-Up Parsing
        - 4.5.1 Reductions
        - 4.5.2 Handle Pruning
        - 4.5.3 Shift-Reduce Parsing
        - 4.5.4 Conflicts During Shift-Reduce Parsing
        - 4.5.5 Exercises for Section 4.5
    - 4.6 Introduction to LR Parsing: Simple LR
        - 4.6.1 Why LR Parsers?
        - 4.6.2 Items and the LR(O) Automaton
        - 4.6.3 The LR-Parsing Algorithm
        - 4.6.4 Constructing SLR-Parsing Tables
        - 4.6.5 Viable Prefixes
        - 4.6.6 Exercises for Section 4.6
    - 4.7 More Powerful LR Parsers
        - 4.7.1 Canonical LR(l) Items
        - 4.7.2 Constructing LR(l) Sets of Items
        - 4.7.3 Canonical LR(l) Parsing Tables
        - 4.7.4 Constructing LALR Parsing Tables
        - 4.7.5 Efficient Construction of LALR Parsing Tables
        - 4.7.6 Compaction of LR Parsing Tables
        - 4.7.7 Exercises for Section 4.7
    - 4.8 U sing Ambiguous Grammars
        - 4.8.1 Precedence and Associativity to Resolve Conflicts
        - 4.8.2 The "Dangling-Else" Ambiguity
        - 4.8.3 Error Recovery in LR Parsing
        - 4.8.4 Exercises for Section 4.8
    - 4.9 Parser Generators
        - 4.9.1 The Parser Generator Yacc
        - 4.9.2 Using Yacc with Ambiguous Grammars
        - 4.9.3 Creating Yacc Lexical Analyzers with Lex
        - 4.9.4 Error Recovery in Yacc
        - 4.9.5 Exercises for Section 4.9
    - 4.10 Summary of Chapter 4
    - 4.11 References for Chapter 4
- 5 Syntax-Directed Translation
    - 5.1 Syntax-Directed Definitions
        - 5.1.1 Inherited and Synthesized Attributes
        - 5.1.2 Evaluating an SDD at the Nodes of a Parse Tree
        - 5.1.3 Exercises for Section 5.1
    - 5.2 Evaluation Orders for SDD's
        - 5.2.1 Dependency Graphs
        - 5.2.2 Ordering the Evaluation of Attributes
        - 5.2.3 S-Attributed Definitions
        - 5.2.4 L-Attributed Definitions
        - 5.2.5 Semantic Rules with Controlled Side Effects
        - 5.2.6 Exercises for Section 5.2
    - 5.3 Applications of Syntax-Directed Translation
        - 5.3.1 Construction of Syntax Trees
        - 5.3.2 The Structure of a Type
        - 5.3.3 Exercises for Section 5.3
    - 5.4 Syntax-Directed Translation Schemes
        - 5.4.1 Postfix Translation Schemes
        - 5.4.2 Parser-Stack Implementation of Postfix SDT's
        - 5.4.3 SDT's With Actions Inside Productions
        - 5.4.4 Eliminating Left Recursion From SDT's
        - 5.4.5 SDT's for L-Attributed Definitions
        - 5.4.6 Exercises for Section 5.4
    - 5.5 Implementing L-Attributed SDD's
        - 5.5.1 Translation During Recursive-Descent Parsing
        - 5.5.2 On-The-Fly Code Generation
        - 5.5.3 L-Attributed SDD's and LL Parsing
        - 5.5.4 Bottom-Up Parsing of L-Attributed SDD's
        - 5.5.5 Exercises for Section 5.5
    - 5.6 Summary of Chapter 5
    - 5.7 References for Chapter 5
    - 6 Intermediate-Code Generation
    - 6.1 Variants of Syntax Trees
        - 6.1.1 Directed Acyclic Graphs for Expressions
        - 6.1.2 The Value-Number Method for Constructing DAG's
        - 6.1.3 Exercises for Section 6.1
    - 6.2 Three-Address Code
        - 6.2.1 Addresses and Instructions
        - 6.2.2 Quadruples
        - 6.2.3 Triples
        - 6.2.4 Static Single-Assignment Form
        - 6.2.5 Exercises for Section 6.2
    - 6.3 Types and Declarations
        - 6.3.1 Type Expressions
        - 6.3.2 Type Equivalence
        - 6.3.3 Declarations
        - 6.3.4 Storage Layout for Local Names
        - 6.3.5 Sequences of Declarations
        - 6.3.6 Fields in Records and Classes
        - 6.3.7 Exercises for Section 6.3
    - 6.4 Translation of Expressions
        - 6.4.1 Operations Within Expressions
        - 6.4.2 Incremental Thanslation
        - 6.4.3 Addressing Array Elements
        - 6.4.4 Thanslation of Array References
        - 6.4.5 Exercises for Section 6.4
    - 6.5 Type Checking
        - 6.5.1 Rules for Type Checking
        - 6.5.2 Type Conversions
        - 6.5.3 Overloading of Functions and Operators
        - 6.5.4 Type Inference and Polymorphic Functions
        - 6.5.5 An Algorithm for Unification
        - 6.5.6 Exercises for Section 6.5
    - 6.6 Control Flow
        - 6.6.1 Boolean Expressions
        - 6.6.2 Short-Circuit Code
        - 6.6.3 Flow-of-Control Statements
        - 6.6.4 Control-Flow Translation of Boolean Expressions
        - 6.6.5 A voiding Redundant Gotos
        - 6.6.6 Boolean Values and Jumping Code
        - 6.6.7 Exercises for Section 6.6
    - 6.7 Backpatching
        - 6.7.1 One-Pass Code Generation Using Backpatching
        - 6.7.2 Backpatching for Boolean Expressions
        - 6.7.3 Flow-of-Control Statements
        - 6.7.4 Break-, Continue-, and Goto-Statements
        - 6.7.5 Exercises for Section 6.7
    - 6.8 Switch-Statements
        - 6.8.1 Translation of Switch-Statements
        - 6.8.2 Syntax-Directed T h anslation of Switch-Statements
        - 6.8.3 Exercises for Section 6.8
    - 6.9 Intermediate Code for Procedures
    - 6.10 Summary of Chapter 6
    - 6.11 References for Chapter 6
- 7 Run-Time Environments 427
    - 7.1 Storage Organization
        - 7.1.1 Static Versus Dynamic Storage Allocation
    - 7.2 Stack Allocation of Space
        - 7.2.1 Activation Trees
        - 7.2.2 Activation Records
        - 7.2.3 Calling Sequences
        - 7.2.4 Variable-Length Data on the Stack
        - 7.2.5 Exercises for Section 7.2
    - 7.3 Access to Nonlocal Data on the Stack
        - 7.3.1 Data Access \Vithout Nested Procedures
        - 7.3.2 Issues With Nested Procedures
        - 7.3.3 A Language With Nested Procedure Declarations
        - 7.3.4 Nesting Depth
        - 7.3.5 Access Links
        - 7.3.6 Manipulating Access Links
        - 7.3.7 Access Links for Procedure Parameters
        - 7.3.8 Displays
        - 7.3.9 Exercises for Section 7.3
    - 7.4 Heap Management
        - 7.4.1 The Memory Manager
        - 7.4.2 The lVIemory Hierarchy of a Computer
        - 7.4.3 Locality in Programs
        - 7.4.4 Reducing Fragmentation
        - 7.4.5 Manual Deallocation Requests
        - 7.4.6 Exercises for Section 7.4
    - 7.5 Introduction to Garbage Collection
        - 7.5.1 Design Goals for Garbage Collectors
        - 7.5.2 Reachability
        - 7.5.3 Reference Counting Garbage Collectors
        - 7.5.4 Exercises for Section 7.5
    - 7.6 Introduction to Trace-Based Collection
        - 7.6.1 A Basic Mark-and-Sweep Collector
        - 7.6.2 Basic Abstraction
        - 7.6.3 Optimizing Mark-and-Sweep
        - 7.6.4 Mark-and-Compact Garbage Collectors
        - 7.6.5 Copying collectors
        - 7.6.6 Comparing Costs
        - 7.6.7 Exercises for Section 7.6
    - 7.7 Short-Pause Garbage Collection
        - 7.7.1 Incremental Garbage Collection
        - 7.7.2 Incremental Reachability Analysis
        - 7.7.3 Partial-Collection Basics
        - 7.7.4 Generational Garbage Collection
        - 7.7.5 The Train Algorithm
        - 7.7.6 Exercises for Section 7.7
    - 7.8 Advanced Topics in Garbage Collection
        - 7.8.1 Parallel and Concurrent Garbage Collection
        - 7.8.2 Partial Object Relocation
        - 7.8.3 Conservative Collection for Unsafe Languages
        - 7.8.4 Weak References
        - 7.8.5 Exercises for Section 7.8
    - 7.9 Summary of Chapter 7
    - 7.10 References for Chapter 7
- 8 Code Generation
    - 8.1 Issues in the Design of a Code Generator
        - 8.1.1 Input to the Code Generator
        - 8.1.2 The Target Program
        - 8.1.3 Instruction Selection
        - 8.1.4 Register Allocation
        - 8.1.5 Evaluation Order
    - 8.2 The Target Language
        - 8.2.1 A Simple Target Machine Model
        - 8.2.2 Program and Instruction Costs
        - 8.2.3 Exercises for Section 8.2
    - 8.3 Addresses in the Target Code
        - 8.3.1 Static Allocation
        - 8.3.2 Stack Allocation
        - 8.3.3 Run-Time Addresses for Names
        - 8.3.4 Exercises for Section 8.3
    - 8.4 Basic Blocks and Flow Graphs
        - 8.4.1 Basic Blocks
        - 8.4.2 Next-Use Information
        - 8.4.3 Flow Graphs
        - 8.4.4 Representation of Flow Graphs
        - 8.4.5 Loops
        - 8.4.6 Exercises for Section 8.4
    - 8.5 Optimization of Basic Blocks
        - 8.5.1 The DAG Representation of Basic Blocks
        - 8.5.2 Finding Local Common Subexpressions
        - 8.5.3 Dead Code Elimination
        - 8.5.4 The Use of Algebraic Identities
        - 8.5.5 Representation of Array References
        - 8.5.6 Pointer Assignments and Procedure Calls
        - 8.5.7 Reassembling Basic Blocks From DAG's
        - 8.5.8 Exercises for Section 8.5
    - 8.6 A Simple Code Generator
        - 8.6.1 Register and Address Descriptors
        - 8.6.2 The Code-Generation Algorithm
        - 8.6.3 Design of the Function getReg
        - 8.6.4 Exercises for Section 8.6
    - 8.7 Peephole Optimization
        - 8.7.2 Eliminating Unreachable Code
        - 8.7.3 Flow-of-Control Optimizations
        - 8.7.4 Algebraic Simplification and Reduction in Strength
        - 8.7.5 Use of Machine Idioms
    - 8.8 Register Allocation and Assignment
        - 8.8.1 Global Register Allocation
        - 8.8.3 Register Assignment for Outer Loops
        - 8.8.4 Register Allocation by Graph Coloring
        - 8.8.5 Exercises for Section 8.8
    - 8.9 Instruction Selection by Tree Rewriting
        - 8.9.1 Tree-Translation Schemes
        - 8.9.2 Code Ge n eration by Tiling an Input Tree
        - 8.9.3 Pattern Matching by Parsing
        - 8.9.4 Routines for Semantic Checking
        - 8.9.5 General Tree Matching
    - 8 Exercises for Section 8.9
    - 8.10 Optimal Code Generatipn for Expressions
        - 8.10.1 Ershov Numbers
        - 8.10.2 Generating Code From Labeled Expression Trees
        - 8.10.3 Evaluating Expressions with an Insufficient Supply of Registers
        - 8.10.4 Exercises for Section 8.10
    - 8.11 Dynamic Programming Code-Generation
        - 8.11.1 Contiguous Evaluation
        - 8.11.2 The Dynamic Programming Algorithm
        - 8.11.3 Exercises for Section 8.11
    - 8.12 Summary of Chapter 8
    - 8.13 References for Chapter 8
- 9 Machine-Independent Optimizations
    - 9.1 The Principal Sources of Optimization
        - 9.1.1 Causes of Redundancy
        - 9.1.2 A R unning Example: Quicksort
        - 9.1.3 Semantics-Preserving Transformations
        - 9.1.4 Global Common Sub expressions
        - 9.1.5 Copy Propagation
        - 9.1.6 Dead-Code Elimination
        - 9.1.7 Code Motion
        - 9.1.8 Induction Variables and Reduction in Strength
        - 9.1.9 Exercises for Section 9.1
    - 9.2 Introduction to Data-Flow Analysis
        - 9.2.1 The Data-Flow Abstraction
        - 9.2.2 The Data-Flow Analysis Schema
        - 9.2.3 Data-Flow Schemas on Basic Blocks
        - 9.2.4 Reaching Definitions
        - 9.2.5 Live-Variable Analysis
        - 9.2.6 Available Expressions
        - 9.2.7 Summary
        - 9.2.8 Exercises for Section 9.2
    - 9.3 Foundations of Data-Flow Analysis
        - 9.3.1 Semilattices
        - 9.3.2 Transfer Functions
        - 9.3.3 The Iterative Algorithm for General Frameworks
        - 9.3.4 Meaning of a Data-Flow Solution
        - 9.3.5 Exercises for Section 9.3
    - 9.4 Constant Propagation
        - 9.4.1 Data-Flow Values for the Constant-Propagation Framework
        - 9.4.2 The Meet for the Constant - Propagation Framework
        - 9.4.3 Transfer Functions for the Constant-Propagation Framework
        - 9.4.4 Monotonicity of the Constant-Propagation Framework
        - 9.4.5 Nondistributivity of the Constant-Propagation Framework 635
        - 9.4.6 Interpretation of the Results
        - 9.4.7 Exercises for Section 9.4
    - 9.5 Partial-Redundancy Elimination
        - 9.5.1 The Sources of Redundancy
        - 9.5.2 Can All Redundancy Be Eliminated?
        - 9.5.3 The Lazy-Code-Motion Problem
        - 9.5.4 Anticipation of Expressions
        - 9.5.5 The Lazy-Code-Motion Algorithm
        - 9.5.6 Exercises for Section 9.5
    - 9.6 Loops in Flow Graphs
        - 9.6.1 Dominators
        - 9.6.2 Depth-First Ordering
        - 9.6.3 Edges in a Depth-First Spanning Tree
        - 9.6.4 Back Edges and Reducibility
        - 9.6.5 Depth of a Flow Graph
        - 9.6.6 Natural Loops
        - 9.6.7 Speed of Convergence of Iterative Data-Flow Algorithms
        - 9.6.8 Exercises for Section 9.6
    - 9.7 Region-Based Analysis
        - 9.7.1 Regions
        - 9.7.2 Region Hierarchies for Reducible Flow Graphs
        - 9.7.3 Overview of a Region-Based Analysis
        - 9.7.4 Necessary Assumptions About Transfer Functions
        - 9.7.5 An Algorithm for Region-Based Analysis
        - 9.7.6 Handling Nonreducible Flow Graphs
        - 9.7.7 Exercises for Section 9.7
    - 9.8 Symbolic Analysis
        - 9.8.1 Affine Expressions of Reference Variables
        - 9.8.2 Data-Flow Problem Formulation
        - 9.8.3 Region-Based Symbolic Analysis
        - 9.8.4 Exercises for Section 9.8
    - 9.9 Summary of Chapter 9
    - 9.10 References for Chapter 9
- 10 Instruction-Level Parallelism
    - 10.1 Processor Architectures
        - 10.1.1 Instruction Pipelines and Branch Delays
        - 10.1.2 Pipelined Execution
        - 10.1.3 :Multiple Instruction Issue
    - 10.2 Code-Scheduling Constraints
        - 10.2.1 Data Dependence
        - 10.2.2 Finding Dependences Among Memory Accesses
        - 10.2.3 Tradeoff Between Register Usage and Parallelism
        - 10.2.4 Phase Ordering Between Register Allocation and Code Scheduling
        - 10.2.5 Control Dependence
        - 10.2.6 Speculative Execution Support
        - 10.2.7 A Basic Machine Model
        - 10.2.8 Exercises for Section 10.2
    - 10.3 Basic-Block Scheduling
        - 10.3.1 Data-Dependence Graphs
        - 10.3.2 List Scheduling of Basic Blocks
        - 10.3.3 Prioritized Topological Orders
        - 10.3.4 Exercises for Section 10.3
    - 10.4 Global Code Scheduling
        - 10.4.1 Primitive Code Motion
        - 10.4.2 Upward Code Motion
        - 10.4.3 Downward Code Motion
        - 10.4.4 Updating Data Dependences
        - 10.4.5 Global Scheduling Algorithms
        - 10.4.6 Advanced Code lVlotion Techniques
        - 10.4.7 Interaction with Dynamic Schedulers
    - 1004.8 Exercises for Section lOA
    - 10.5 Software Pipelining
        - 10.5.1 Introduction
        - 10.5.2 Software Pipelining of Loops
        - 10.5.3 Register Allocation and Code Generation
        - 10.5.4 Do-Across Loops
        - 10.5.5 Goals and Constraints of Software Pipelining
        - 10.5.6 A Software-Pipelining Algorithm
        - 10.5.7 Scheduling Acyclic Data-Dependence Graphs
        - 10.5.8 Scheduling Cyclic Dependence Graphs
        - 10.5.9 Improvements to the Pipelining Algorithms
        - 10.5.10 Modular Variable Expansion
        - 10.5.11 Conditional Statements
        - 10.5.12 Hardware Support for Software Pipelining
        - 10.5.13 Exercises for Section 10.5
    - 10.6 Summary of Chapter 10
    - 10.7 References for Chapter 10
- 11 Optimizing for Parallelism and Locality
    - 11.1 Basic Concepts
        - 11.1.1 Multiprocessors
        - 11.1.2 Parallelism in Applications
        - 11.1.3 Loop-Level Parallelism
        - 11.1.4 Data Locality
        - 11.1.5 Introduction to Affine Transform Theory
    - 11.2 Matrix Multiply: An In-Depth Example
        - 11.2.1 The Matrix-Multiplication Algorithm
        - 11.2.2 Optimizations
        - 11.2.3 Cache Interference
        - 11.2.4 Exercises for Section 11.2
    - 11.3 Iteration Spaces
        - 11.3.1 Constructing Iteration Spaces from Loop Nests
        - 11.3.2 Execution Order for Loop Nests
        - 11.3.3 Matrix Formulation of Inequalities
        - 11.3.4 Incorporating Symbolic Constants
        - 11.3.5 Controlling the Order of Execution
        - 11.3.6 Changing Axes
        - 11.3.7 Exercises for Section 11.3
    - 11.4 Affine Array Indexes
        - 11.4.1 Affine Accesses
        - 11.4.2 Affine and Nonaffine Accesses in Practice
        - 11.4.3 Exercises for Sec tion 11.4
    - 11.5 Data Reuse
        - 11.5.1 Types of Reuse
        - 11.5.3 Self-Spatial Reuse
        - 11.5.4 Group Reuse
        - 11.5.5 Exercises for Section 11.5
    - 11.6 Array Data-Dependence Analysis
        - 11.6.1 Definition of Data Dependence of Array Accesses
        - 11.6.2 Integer Linear Programming
        - 11.6.3 The GCD Test
        - 11.6.4 Heuristics for Solving Integer Linear Programs
        - 11.6.5 Solving General Integer Linear Programs
        - 11.6.6 Summary
        - 11.6.7 Exercises for Section 11.6
    - 11.7 Finding Synchronization-Free Parallelism
        - 11.7.1 An Introductory Example
        - 11.7.2 Affine Space Partitions
        - 11.7.6 Eliminating Empty Iterations
    - 11.8 Synchronization Between Parallel Loops
        - 11.8.1 A Constant Number of Synchronizations
        - 11.8.2 Program-Dependence Graphs
        - 11.8.3 Hierarchical Time
        - 11.8.4 The Parallelization Algorithm
        - 11.8.5 Exercises for Section 11.8
    - 11.9 Pipelining
        - 11.9.1 What is Pipelining?
        - 11.9.2 Successive Over-Relaxation ( SOR ) : An Example
        - 11.9.3 Fully Permutable Loops
        - 11.9.4 Pipelining Fully Permutable Loops
        - 11.9.5 General Theory
        - 11.9.6 Time-Partition Constraints
        - 11.9.7 Solving Time-Partition Constraints by Farkas' Lemma
        - 11.9.8 Code Transformations
        - 11.9.9 Parallelism With Minimum Synchronization
    - 11.10 Locality Optimizations
        - 11.10.1 Temporal Locality of Computed Data
        - 11.10.2 Array Contraction
        - 11.10.3 Partition Interleaving
        - 11.10.4 Putting it All Together
        - 11.10.5 Exercises for Secti on 11.10
    - 11.11 Other Uses of Affine Transforms
        - 11.11.1 Distributed memory machines
        - 11.11.2 M ulti-Instruction-Issue Processors
        - 11.11.3Vector and SIMD Instructions
        - 11.11.4 Prefetching
    - 11.12 Summary of Chapter 11
    - 11.13 References for Chapter 11
- 12 Interprocedural Analysis
    - 12.1 Basic Concepts
        - 12.1.1 Call Graphs
        - 12.1.2 Context Sensitivity
        - 12.1.3 Call Strings
        - 12.1.4 Cloning-Based Context-Sensitive Analysis
        - 12.1.5 Summary-Based Context-Sensitive Analysis
        - 12.1.6 Exercises for Section 12.1
    - 12.2 Why Interprocedural Analysis?
        - 12.2.1 Virtual Method Invocation
        - 12.2.2 Pointer Alias Analysis
        - 12.2.3 Parallelization
        - 12.2.4 Detection of Software Errors and Vulnerabilities
        - 12.2.5 SQL Injection
        - 12.2.6 Buffer Overflow
    - 12.3 A Logical Representation of Data Flow
        - 12.3.1 Introduction to Datalog
        - 12.3.2 Datalog Rules
        - 12.3.3 Intensional and Extensional Predicates
        - 12.3.4 Execution of Datalog Programs
        - 12.3.5 Incremental Evaluation of Datalog Programs
        - 12.3.6 Problematic Datalog Rules
        - 12.3.7 Exercises for Section 12.3
    - 12.4 A Simple Pointer - Analysis Algorithm
        - 12.4.1 Why is Pointer Analysis Difficult
        - 12.4.2 A Model for Pointers and References
        - 12.4.3 Flow Insensitivity
        - 12.4.4 The Formulation in Datalog
        - 12.4.5 Using Type Information
        - 12.4.6 Exercises for Section 12.4
    - 12.5 Context-Insensitive Interprocedural Analysis
        - 12.5.1 Effects of a Method Invocation
        - 12.5.2 Call Graph Discovery in Datalog
        - 12.5.3 Dynamic Loading and Reflection
        - 12.5.4 Exercises for Section 12.5
    - 12.6 Context-Sensitive Pointer Analysis
        - 12.6.1 Contexts and Call Strings
        - 12.6.2 Adding Context to Datalog Rules
        - 12.6.3 Additional Observations About Sensitivity
        - 12.6.4 Exercises for Section 12.6
    - 12.7 Datalog Implementation by BDD's
        - 12.7.1 Binary Decision Diagrams
        - 12.7.2 Transformations on BDD's
        - 12.7.3 Representing Relations by BDD's
        - 12.7.4 Relational Operations as BDD Operations
        - 12.7.5 Using BDD's for Points-to Analysis
        - 12.7.6 Exercises for Section 12.7
    - 12.8 Summary of Chapter 12
    - 12.9 References for Chapter 12
- A A Complete Front End
    - A.l The Source Language
    - A.2 Main
    - A.3 Lexical Analyzer
    - A.4 Symbol Tables and Types
    - A.5 Intermediate Code for Expressions
    - A.6 Jumping Code for Boolean Expressions
    - A.7 Intermediate Code for Statements
    - A.8 Parser
    - A.9 Creating the Front End
- B Finding Linearly Independent Solutions



## 🟢🔵 Structure and Interpretation of Computer Programs (SICP)
- Structure and Interpretation of Computer Programs 2nd, SICP https://mitpress.mit.edu/sites/default/files/sicp/index.html
- https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book-Z-H-4.html

Contents

    Foreword
    Preface to the Second Edition
    Preface to the First Edition
    Acknowledgments
    1  Building Abstractions with Procedures
        1.1  The Elements of Programming
            1.1.1  Expressions
            1.1.2  Naming and the Environment
            1.1.3  Evaluating Combinations
            1.1.4  Compound Procedures
            1.1.5  The Substitution Model for Procedure Application
            1.1.6  Conditional Expressions and Predicates
            1.1.7  Example: Square Roots by Newton's Method
            1.1.8  Procedures as Black-Box Abstractions
        1.2  Procedures and the Processes They Generate
            1.2.1  Linear Recursion and Iteration
            1.2.2  Tree Recursion
            1.2.3  Orders of Growth
            1.2.4  Exponentiation
            1.2.5  Greatest Common Divisors
            1.2.6  Example: Testing for Primality
        1.3  Formulating Abstractions with Higher-Order Procedures
            1.3.1  Procedures as Arguments
            1.3.2  Constructing Procedures Using Lambda
            1.3.3  Procedures as General Methods
            1.3.4  Procedures as Returned Values
    2  Building Abstractions with Data
        2.1  Introduction to Data Abstraction
            2.1.1  Example: Arithmetic Operations for Rational Numbers
            2.1.2  Abstraction Barriers
            2.1.3  What Is Meant by Data?
            2.1.4  Extended Exercise: Interval Arithmetic
        2.2  Hierarchical Data and the Closure Property
            2.2.1  Representing Sequences
            2.2.2  Hierarchical Structures
            2.2.3  Sequences as Conventional Interfaces
            2.2.4  Example: A Picture Language
        2.3  Symbolic Data
            2.3.1  Quotation
            2.3.2  Example: Symbolic Differentiation
            2.3.3  Example: Representing Sets
            2.3.4  Example: Huffman Encoding Trees
        2.4  Multiple Representations for Abstract Data
            2.4.1  Representations for Complex Numbers
            2.4.2  Tagged data
            2.4.3  Data-Directed Programming and Additivity
        2.5  Systems with Generic Operations
            2.5.1  Generic Arithmetic Operations
            2.5.2  Combining Data of Different Types
            2.5.3  Example: Symbolic Algebra
    3  Modularity, Objects, and State
        3.1  Assignment and Local State
            3.1.1  Local State Variables
            3.1.2  The Benefits of Introducing Assignment
            3.1.3  The Costs of Introducing Assignment
        3.2  The Environment Model of Evaluation
            3.2.1  The Rules for Evaluation
            3.2.2  Applying Simple Procedures
            3.2.3  Frames as the Repository of Local State
            3.2.4  Internal Definitions
        3.3  Modeling with Mutable Data
            3.3.1  Mutable List Structure
            3.3.2  Representing Queues
            3.3.3  Representing Tables
            3.3.4  A Simulator for Digital Circuits
            3.3.5  Propagation of Constraints
        3.4  Concurrency: Time Is of the Essence
            3.4.1  The Nature of Time in Concurrent Systems
            3.4.2  Mechanisms for Controlling Concurrency
        3.5  Streams
            3.5.1  Streams Are Delayed Lists
            3.5.2  Infinite Streams
            3.5.3  Exploiting the Stream Paradigm
            3.5.4  Streams and Delayed Evaluation
            3.5.5  Modularity of Functional Programs and Modularity of Objects
    4  Metalinguistic Abstraction
        4.1  The Metacircular Evaluator
            4.1.1  The Core of the Evaluator
            4.1.2  Representing Expressions
            4.1.3  Evaluator Data Structures
            4.1.4  Running the Evaluator as a Program
            4.1.5  Data as Programs
            4.1.6  Internal Definitions
            4.1.7  Separating Syntactic Analysis from Execution
        4.2  Variations on a Scheme -- Lazy Evaluation
            4.2.1  Normal Order and Applicative Order
            4.2.2  An Interpreter with Lazy Evaluation
            4.2.3  Streams as Lazy Lists
        4.3  Variations on a Scheme -- Nondeterministic Computing
            4.3.1  Amb and Search
            4.3.2  Examples of Nondeterministic Programs
            4.3.3  Implementing the Amb Evaluator
        4.4  Logic Programming
            4.4.1  Deductive Information Retrieval
            4.4.2  How the Query System Works
            4.4.3  Is Logic Programming Mathematical Logic?
            4.4.4  Implementing the Query System
    5  Computing with Register Machines
        5.1  Designing Register Machines
            5.1.1  A Language for Describing Register Machines
            5.1.2  Abstraction in Machine Design
            5.1.3  Subroutines
            5.1.4  Using a Stack to Implement Recursion
            5.1.5  Instruction Summary
        5.2  A Register-Machine Simulator
            5.2.1  The Machine Model
            5.2.2  The Assembler
            5.2.3  Generating Execution Procedures for Instructions
            5.2.4  Monitoring Machine Performance
        5.3  Storage Allocation and Garbage Collection
            5.3.1  Memory as Vectors
            5.3.2  Maintaining the Illusion of Infinite Memory
        5.4  The Explicit-Control Evaluator
            5.4.1  The Core of the Explicit-Control Evaluator
            5.4.2  Sequence Evaluation and Tail Recursion
            5.4.3  Conditionals, Assignments, and Definitions
            5.4.4  Running the Evaluator
        5.5  Compilation
            5.5.1  Structure of the Compiler
            5.5.2  Compiling Expressions
            5.5.3  Compiling Combinations
            5.5.4  Combining Instruction Sequences
            5.5.5  An Example of Compiled Code
            5.5.6  Lexical Addressing
            5.5.7  Interfacing Compiled Code to the Evaluator
    References
    List of Exercises
    Index



# 🟡🟠 Getting Started
- [The Rust Programming Language](https://doc.rust-lang.org/book/)
- [Rust by Example](https://doc.rust-lang.org/rust-by-example/index.html)
- [The rustc book](https://doc.rust-lang.org/rustc/what-is-rustc.html)
- [Guide to Rustc Development](https://rustc-dev-guide.rust-lang.org/about-this-guide.html)
- [The Rustonomicon - The Dark Arts of Unsafe Rust](https://doc.rust-lang.org/nightly/nomicon/index.html)
- [Futures Explained in 200 Lines of Rust](https://cfsamson.github.io/books-futures-explained/)
- [Green Threads Explained in 200 Lines of Rust](https://cfsamson.gitbook.io/green-threads-explained-in-200-lines-of-rust/)
- [Rust Language Cheat Sheet](https://cheats.rs)
- [Golang vs. Rust: Which Programming Language To Choose in 2021?](https://trio.dev/blog/golang-vs-rust)
- [Rust & Go & C++ 比较](https://duzhi5368.github.io/2019/05/rustgoc--%E6%AF%94%E8%BE%83/)
- [Why Go Is Not Good](http://yager.io/programming/go.html)
- [The Rust Compilation Model Calamity](https://en.pingcap.com/blog/rust-compilation-model-calamity)
- [Rust 编译模型之殇](https://cloud.tencent.com/developer/article/1592954)
- [Rust 中的异步编程](https://huangjj27.github.io/async-book/01_getting_started/01_chapter.html)
- [Rust 异步编程](https://learnku.com/docs/async-book/2018/translation-notes/4798)
- [给初学者的Rust中文教程](https://rustcc.gitbooks.io/rustprimer/content/)
- [The Embedonomicon](https://docs.rust-embedded.org/embedonomicon/)
- [The Embedded Rust Book](https://docs.rust-embedded.org/book/intro/index.html)
- [The Discovery book](https://docs.rust-embedded.org/discovery/index.html)
- [Why using Rust in the Linux kernel](https://lkml.org/lkml/2021/4/14/1023)

Rust 最早是 Mozilla 雇员 Graydon Hoare 的个人项目，从 2009 年开始，得到了 Mozilla 研究院的资助，2010 年项目对外公布。

2010 ～2011 年间实现的自举，从此以后，Rust 经历了巨大的设计变化和反复（历程极其艰辛），终于在 2015 年 5 月 15日发布了 1.0 版。

在这个研发过程中，Rust 建立了一个强大活跃的社区，形成了一整套完善稳定的项目贡献机制，现在由 Rust 项目开发者社区维护，这是真正的强大之处。

自 2015 年 5 月 15 日 Rust 编程语言核心团队正式宣布发布 Rust 1.0 版本以来，它优雅的解决高并发和高安全性系统问题的能力，受到了越来越多开发者的喜爱。

Rust 在工作中的占比却越来越高，Rust 在商业应用上有着令人惊讶的成长，包括一些人们耳熟能详的公司：

- 亚马逊：用 Rust 构建工具；
- Facebook：源代码控制工具，Libra 数字货币项目，更名为 Diem，纯 Rust 实现；
- Google：作为 Fuchsia 操作系统项目的一部分；
- 微软：在新的 Azure 物联网框架中部分使用 Rust；
- Twitter：用 Rust 作为构建团队支持的一部分。

其它一些 Rust 开发的知名项目：

- TiKV ，Rust 实现的分布式KV存储，是TiDB的基础。
- Redox ，Rust 实现的操作系统，背后是System76公司。
- tockOS，Rust 实现的基于 Cortex-M 的微控制器的安全嵌入式操作系统。
- Parity 和 CITA 区块链框架，Gavin Wood 把 Rust 带进区块链，推出以太坊客户端 Parity，成功占领以太坊社区的半壁江山。
- Firecracker，亚马逊出品的一个基于 KVM 的轻量级 VMM，可以在几分之一秒内启动虚拟机，内存占用少，可以实现高密度云环境。
- Mesalink TLS 是百度安全实验室研发的下一代传输层安全库，正式支持 TLS 1.3 和 IPv6，支持 CMake 编译，支持 Windows，实现生产环境可用。
- alacritty，Rust 实现的跨平台且 GPU 加速的终端工具。
- citybound，一个 Rust 实现的多角色城市模拟游戏。
- Amethyst，Rust 实现的游戏引擎，采用了 ECS 架构。
- Rustsim 组织，聚焦于提供各种数值模拟的库，用于科学计算。包括 alga（抽象代数库）/nalgebra（ 线性代数库）/ncollide（2D和3D的碰撞检测库）/nphysics（2D和3D的物理模拟库）。
- actix-web， 基于 Actor 库 Actix 的 Web 框架，还有 rocket，Rust 实现的 MVC 框架。
- Deno，Node.js 之父的新坑，TypeScript 运行时，完全兼容浏览器 API。
- Xi-editor，Rust 和现代软件工程构建的高质量文本编辑器。所有的操作都在 16ms 内提交和绘制，永远不会让你等待任何事情。
- Servo - independent, modular, embeddable web engine https://servo.org/

比较 C++ Rust Golang 的优势与劣势 pros and cons，看看投票：

    |            Pros of C++            |                Pros of Go               |                Pros of Rust               |
    |-----------------------------------|-----------------------------------------|-------------------------------------------|
    | 171 Performance                   | 513 High-performance                    | 122 Guaranteed memory safety              |
    | 91 Control over memory allocation | 376 Simple, minimal syntax              | 109 Fast                                  |
    | 87 Cross-platform                 | 343 Fun to write                        | 72 Open source                            |
    | 82 Fast                           | 289 Easy concurrency with goroutines    | 66 Minimal runtime                        |
    | 73 Object oriented                | 261 Fast compilation times              | 57 Pattern matching                       |
    | 53 Industry standard              | 183 Goroutines                          | 53 Type inference                         |
    | 41 Smart pointers                 | 173 Statically linked, simple to deploy | 51 Algebraic data types                   |
    | 32 Templates                      | 144 Simple compile build/run procedures | 46 Concurrent                             |
    | 16 Gui toolkits                   | 129 Backed by google                    | 43 Efficient C bindings                   |
    | 15 Raii                           | 125 Great community                     | 38 Practical                              |
    | 12 Generic programming            | 46 Garbage collection built-in          | 30 Best advances in languages in 20 years |
    | 11 Flexibility                    | 40 Built-in Testing                     | 22 Safe, fast, easy + friendly community  |
    | 10 Control                        | 36 Excellent tools - gofmt, godoc etc   | 22 Fix for C/C++                          |

在项目可维护性上，Golang 比 Rust 要做得好，可以说是基于接口组合式思想，快速高效又好玩的 C。而 Rust 最大的优点是高效的开发还搭配上高安全性，这一点非常好，可以说 Rust 是高效安全版的 C++。

如果迅速地编译不是 Rust 的核心设计原则，那么 Rust 的核心设计原则是什么呢？

除了 Rust 的编译效率方面的不足，Rust 带来的是更多的优秀的核心设计原则：

- Practicality 实用性 ：它应该是一种可以在现实世界中使用的语言；
- Pragmatism 务实：它应该是符合人性化体验，并且能与现有系统方便集成的语言；
- Memory safety 内存安全性：它必须加强内存安全，不允许出现段错误和其他类似的内存访问违规操作；
- Performance 高性能 ：它必须拥有能和 C++ 比肩的性能；
- Concurrency 高并发 ：它必须为编写并发代码提供现代化的解决方案。

另外，Go 的设计目的是为了让开发者能够轻松地制作快速、安全、以网络为中心的代码，并在当今的多核 CPU 上获益。这使得该语言得到了极大的应用，尤其是在云环境中。Go 提供强大的跨平台交叉编译、优秀的网络实现和加密库以及原生的文件嵌入功能，又让其颇受恶意软件开发者的青睐！在过去几年中，在市面上发现的用 Go 编写的新恶意软件几乎增加了 2000%。这些恶意软件中有许多是针对 Linux 和物联网设备的僵尸网络，以安装加密矿机或将受感染的机器注册到 DDoS 僵尸网络中。此外，用 Go 编写的勒索软件似乎也变得更加普遍。一些用 Go 编写的著名勒索软件是 Nefilim、EKANS 和 RobbinHood，这些勒索软件用于所谓的大型猎物攻击。


## ⚡ Installation
- https://www.rust-lang.org/learn/get-started
- The Rust Programming Language https://doc.rust-lang.org/book/
- The Rust Programming Language [CN] https://kaisery.github.io/trpl-zh-cn/ch01-01-installation.html
- Rust Playground https://play.rust-lang.org/
- https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2019
- https://www.forrestthewoods.com/blog/how-to-debug-rust-with-visual-studio-code/
- Bringing a great IDE experience to the Rust https://rust-analyzer.github.io
- Editor Features for VS Code https://rust-analyzer.github.io/manual.html#vs-code-2
- Rust Analyzer Releases https://github.com/rust-analyzer/rust-analyzer/releases

在 Linux 或 macOS 上安装 rustup，打开终端并输入如下命令：

    $ curl https://sh.rustup.rs -sSf | sh

此命令下载一个脚本并开始安装 rustup 工具，它是 Rust 版本管理工具，这会安装最新稳定版 Rust，过程中可能会提示你输入密码。

此安装脚本自动将 Rust 加入系统 PATH 环境变量中，在下一次登录时生效。如果你希望立刻就开始使用 Rust 而不重启终端，在 shell 中运行如下命令，手动将 Rust 加入系统 PATH 变量中：

    $ source $HOME/.cargo/env

或者，可以在 `~/.bash_profile` 文件中增加如下行：

    $ export PATH="$HOME/.cargo/bin:$PATH"

另外，你需要一个某种类型的链接器（linker）。很有可能已经安装，不过当你尝试编译 Rust 程序时，却有错误指出无法执行链接器，这意味着你的系统上没有安装链接器，你需要自行安装一个。C 编译器通常带有正确的链接器。请查看你使用平台的文档，了解如何安装 C 编译器。并且，一些常用的 Rust 包依赖 C 代码，也需要安装 C 编译器。因此现在安装一个是值得的。


Windows 系统使用 rustup 工具安装，前往官网并按照说明安装 Rust。

```sh
# https://www.rust-lang.org/install.html
# Windows, download RUSTUP-INIT.EXE (32-BIT or 64-BIT)
curl -O https://static.rust-lang.org/rustup/dist/i686-pc-windows-msvc/rustup-init.exe
curl -O https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe
# Windows Subsystem for Linux
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

在安装过程的某个步骤，你会收到一个信息说明为什么需要安装 Visual Studio 2013 或更新版本的 C++ build tools。

Visual Studio 或 C++  build tools 必定安装其一，否则不能链接 Rust 程序，建议安装 Visual Studio 2019 社区版。同时，Windows 10 系统需要安装 Windows 10 SDK (10.0.18362.0) 解决 advapi32.lib 这个问题的。


将以下目录加入 PATH 环境变量：

    %USERPROFILE%\.cargo\bin

    C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\amd64

    C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86

rust1.16.0 在 VS2017 下不能正确识别相关的 LIB，手动添加 LIB：

    C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.10.25017\lib\x64;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.14393.0\um\x64;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.14393.0\ucrt\x64

余下部分会使用能同时运行于 cmd.exe 和 PowerShell 的命令。如果存在特定差异，我们会解释使用哪一个。

通过版本管理工具 rustup 安装了 Rust 之后，很容易更新到最新版本。在 shell 中运行如下更新脚本：

    $ rustup update

为了卸载 Rust 和 rustup，在 shell 中运行如下卸载脚本:

    $ rustup self uninstall

要检查是否正确安装了 Rust，打开 shell 并运行编译器，如下行：

    $ rustc --version

你应能看到已发布的最新稳定版的版本号、提交哈希和提交日期，显示为如下格式：

    rustc x.y.z (abcabcabc yyyy-mm-dd)

要安装、卸载或设置默认 Rust 版本，如果本地不存在将自动下载安装：

    rustup default stable
    rustup default nightly

    rustup toolchain list
    rustup toolchain uninstall nightly


如果出现这些内容，Rust 就安装成功了！如果并没有看到这些信息，并且使用的是 Windows，请检查 Rust 是否位于 %PATH% 系统变量中。如果一切正确但 Rust 仍不能使用，有许多地方可以求助。最简单的是 位于 Rust 官方 Discord 上的 #beginners 频道。在这里你可以和其他 Rustacean（Rust 用户的称号，有自嘲意味）聊天并寻求帮助。其它给力的资源包括用户论坛和 Stack Overflow。

|    Programs   |         Note         |
|---------------|----------------------|
| cargo-clippy  |                      |
| cargo-fmt     |                      |
| cargo-miri    |                      |
| cargo         | Project Manager      |
| clippy-driver |                      |
| ddoc          |                      |
| mdbook        |                      |
| rls           | Rust language server |
| rust-gdb      |                      |
| rust-lldb     |                      |
| rustc         | Rust Compiler        |
| rustdoc       | Rust Documentation   |
| rustfmt       | Source formatter     |
| rustup        | Toolchain installer  |
| wasm-pack     | WebAssebly packager  |

安装程序也自带一份文档的本地拷贝，可以离线阅读。运行 `rustup doc` 在浏览器中查看本地文档。

任何时候，如果你拿不准标准库中的类型或函数的用途和用法，请查阅应用程序接口（application programming interface，API）文档！


感谢微软开源团队所做的贡献，Windows WSL 可以高效使用 Linux 系统，开发者可以使用 VSCode 踏平台开发工具。

同时，Server Language Protocol 极大地提升了编辑器的开发体验，Rust 也紧跟步伐，提供了 RLS - Rust Language Server，它使用 Cargo 和 Rust compiler (rustc) 直接给编辑器提供参数信息。

另外，更强大的是 Rust Analyzer，目前是最好的扩展，它将编译器前端与 Rust 语言分离，不需要通过 Rust compiler (rustc) 直接高效地为编辑器提供适合的语法分析信息。注意，它与官方的 Rust extension 有冲突，建议禁用。

Rust Analyzer 提供丰富的功能，比如在简化代码输入方法，可以通过前缀触发关键字的自动完成，foo().if 句点后面的关键字确定了如何自动完成，参考形式如下：

    expr.if → if expr {} or if let … {} for Option or Result
    expr.match → match expr {}
    expr.while → while expr {} or while let … {} for Option or Result
    expr.ref → &expr
    expr.refm → &mut expr
    expr.let → let $0 = expr;
    expr.letm → let mut $0 = expr;
    expr.not → !expr
    expr.dbg → dbg!(expr)
    expr.dbgr → dbg!(&expr)
    expr.call → (expr)

    pd → eprintln!(" = {:?}", );
    ppd → eprintln!(" = {:#?}", );


根据工作系统安装调试器扩展：

- C/C++ (Windows)
- CodeLLDB (OS X / Linux)

Rust 目前还提供了 rust-lldb 和 rust-gdb 两个调试工具，可以不能在 Windows 分支使用。

打开 VScode 配置，搜索 Breakpoints，勾选以下条目即可以在代码中下断点：

    Debug: Allow Breakpoints Eventywhere

配置 VSCode launch.json 用于调试，快捷键 F5 运行：

```json
{
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
          "name": "Cargo Run!",
          "type": "cppvsdbg",
          "request": "launch",
          "stopAtEntry": true,
          "preLaunchTask": "cargo build",
          "program": "target\\debug\\output.exe",
          "args": ["run"],
          "cwd": "${workspaceFolder}",
          "environment": [],
          "console": "internalConsole"
        },
        {
            "name": "(OSX) Launch",
            "type": "lldb",
            "request": "launch",
            "program": "${workspaceRoot}/target/debug/foo",
            "args": [],
            "cwd": "${workspaceRoot}",
        }
    ]
}
```

配置 VSCode tasks.json，快捷键 Ctrl-Shift-B 执行，自动运行指定 isDefault 命令配置：

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "type": "cargo",
            "subcommand": "build",
            "problemMatcher": [
                "$rustc"
            ],
            "group": "build",
            "label": "cargo build"
        },
        {
            "type": "cargo",
            "subcommand": "run",
            "problemMatcher": [
                "$rustc"
            ],
            "label": "cargo run",
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}
```

## ⚡ Cargo Tool
- [The Cargo Book](https://doc.rust-lang.org/cargo/)
- [Cargo cache](https://crates.io/crates/cargo-cache)
- [More about cargo](https://doc.rust-lang.org/book/ch14-00-more-about-cargo.html)
- [指定依赖及版本](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html)
- [The Manifest Format](https://doc.rust-lang.org/cargo/reference/manifest.html)
- [Workspaces](https://doc.rust-lang.org/cargo/reference/workspaces.html)
- [Environment Variables](https://doc.rust-lang.org/cargo/reference/environment-variables.html)
- [Build scripts](https://doc.rust-lang.org/cargo/reference/build-scripts.html)
- [VSCode launch.json Reference](https://code.visualstudio.com/docs/cpp/launch-json-reference)
- [rustc Command-line arguments](https://doc.rust-lang.org/rustc/command-line-arguments.html)
- [mdBook - Creates a book from markdown files](https://crates.io/crates/mdbook)

Cargo 是 Rust 的构建系统和包管理器，能够自动处理依赖，方便项目的重新构建。

Cargo 命令快速参考：

    | Build Commands |    Manifest Commands    | Package Commands | Publishing Commands |
    |----------------|-------------------------|------------------|---------------------|
    | cargo bench    | cargo generate-lockfile | cargo init       | cargo login         |
    | cargo build    | cargo locate-project    | cargo install    | cargo owner         |
    | cargo check    | cargo metadata          | cargo new        | cargo package       |
    | cargo clean    | cargo pkgid             | cargo search     | cargo publish       |
    | cargo doc      | cargo tree              | cargo uninstall  | cargo yank          |
    | cargo fetch    | cargo update            |                  |                     |
    | cargo fix      | cargo vendor            |                  |                     |
    | cargo run      | cargo verify-project    |                  |                     |
    | cargo rustc    |                         |                  |                     |
    | cargo rustdoc  |                         |                  |                     |
    | cargo test     |                         |                  |                     |

如果需要在本地查阅文档，可以执行以下命令：

    rustup doc

安装 Rust 后，安装目录下的所有工具程序的功能都可以通过 Cargo 命令来使用，也可以安装新的工具，如
cargo-cache 它可以帮助管理 $CARGO_HOME 目录缓存。还有 racer 工具，Code completion for Rust：

    cargo install cargo-cache
    cargo install racer

Cargo 是好用的 Rust 项目管理工具，它可以处理很多任务，比如构建代码、下载依赖库并编译这些库。代码
所需要的库叫做依赖 dependencies，Cargo 可以很好地管理它们。例如，添加依赖模块：

    cargo add --features console,CanvasRenderingContext2d,Document,Element,HtmlCanvasElement,Window web-sys

Cargo 支持的特性：

- conditional compilation options (usable through cfg attributes);
- optional dependencies, which enhance a package, but are not required; and
- clusters of optional dependencies, such as postgres-all, that would include 
  the postgres package, the postgres-macros package, and possibly other packages 
  (such as development-time mocking libraries, debugging tools, etc.).

Cargo 提供四种编译配置 dev, release, test, bench 包含不同的优化、调试符号设置，用于不同目的。

一些程序或包可能要使用非 Rust 代码，如 C 语言库，那么在编译时会需要编译相应的源代码，Cargo 不打算
替换那些已经优化好的编译工具，而是提供构建脚本 build.rs 来辅助执行编译，只要将它放到项目目录下，
在构建时即可以执行：

    // Example custom build.rs script.
    fn main() {
        // Tell Cargo that if the given file changes, to rerun this build script.
        println!("cargo:rerun-if-changed=src/hello.c");
        // Use the `cc` crate to build a C file and statically link it.
        cc::Build::new()
            .file("src/hello.c")
            .compile("hello");
    }

使用构建脚本的用实现的功能包括：

- Building a bundled C library.
- Finding a C library on the host system.
- Generating a Rust module from a specification.
- Performing any platform-specific configuration needed for the crate.

Cargo 用 Workspaces 的概念管理着项目的 Packages，在项目配置文件 Cargo.toml 所在目录定义了
Root package，即配置文件中的 `[package]` 区定义的顶级包。

在配置文件中，还可以添加 `[workspace]` 定义更多的包，它们都可以看作独立的工程：

    [workspace]
    members = ["member1", "path/to/member2", "crates/*"]
    exclude = ["crates/foo", "path/to/other"]
    default-members = ["path/to/member2", "path/to/member3/foo"]

最简单的 Rust 程序，没有任何依赖。所以如果使用 Cargo 来构建 “Hello, world!” 项目，将只会用到
Cargo 构建代码的那部分功能。更复杂的 Rust 程序，需要添加依赖项，使用 Cargo 则添加依赖项将更容易。

由于绝大多数 Rust 项目使用 Cargo，接下来的操作假设你也使用 Cargo。官方安装包自带了 Cargo，如果
通过其他方式安装的话，可以在终端输入如下命令检查是否安装了 Cargo：

    $ cargo --version

如果你看到了版本号，说明已安装！否则，应该查看相应安装文档以确定如何单独安装 Cargo。

通过以下命令可以创建可执行程序、库项目：

    cargo new hello_world --bin
    cargo new hello_world --lib

使用 Cargo 创建新项目，可在任何操作系统下运行以下命令新建名为 hello_cargo 的项目：

    $ cargo new hello_cargo
    $ cd hello_cargo
    $ tree .
    .
    ├── Cargo.toml
    └── src
        └── main.rs

    1 directory, 2 files

进入 hello_cargo 目录并列出文件，目录结构中包含 Cargo 生成的两个文件和一个目录：

- 一个 Cargo.toml 文件；
- 一个 src 目录，以及位于 src 目录中的 main.rs 文件。
- 根目录也初始化了一个 git 仓库，以及一个 .gitignore 文件。

注意：Git 是一个常用的版本控制系统 version control system (VCS)。执行 cargo new 命令可以
通过 --vcs 参数切换到其它版本控制系统，或者不使用 VCS。运行 cargo new --help 参看可用的选项。

项目配置文件 Cargo.toml

    [package]
    name = "hello_cargo"
    version = "0.1.0"
    authors = ["Your Name <you@example.com>"]
    edition = "2018"

    [dependencies]

这个文件使用 TOML (Tom's Obvious, Minimal Language) 格式，这是 Cargo 配置文件的格式。

第一行，[package]，是一个片段（section）标题，表明下面的语句用来配置一个包。随着我们在这个文件
增加更多的信息，还将增加其他片段（section）。

接下来的四行设置了 Cargo 编译程序所需的配置：项目的名称、版本、作者以及要使用的 Rust 版本。Cargo 
从环境变量中获取你的名字和 email 信息，所以如果这些信息不正确，请修改并保存此文件。

最后一行 [dependencies] 是罗列项目依赖的片段开始。在 Rust 中，代码包被称为 crates。这个项目
并不需要其他的 crate，不过在后面会用到依赖，那时会用得上这个片段。

根据依赖所存储的位置，可以用不同的方式指定，参考 [Cargo Reference - Specifying Dependencies](cargo/src/reference/specifying-dependencies.md)：

    [dependencies]
    hello_utils = { path = "hello_utils" }
    hello_utils = { path = "hello_utils", version = "0.1.0" }
    rand = { git = "https://github.com/rust-lang-nursery/rand" }
    rand = { git = "https://github.com/rust-lang-nursery/rand", branch = "next" }

还可以根据平台设置依赖：

    [target.'cfg(windows)'.dependencies]
    winhttp = "0.4.0"

    [target.'cfg(unix)'.dependencies]
    openssl = "1.0.1"

    [target.'cfg(target_arch = "x86")'.dependencies]
    native = { path = "native/i686" }

    [target.'cfg(target_arch = "x86_64")'.dependencies]
    native = { path = "native/x86_64" }

现在打开 src/main.rs 看看：

文件名: src/main.rs

    fn main() {
        println!("Hello, world!");
    }

Cargo 为你生成了一个 “Hello, world!” 程序，正如我们之前编写的示例！目前为止，之前项目与 Cargo
生成项目的区别是 Cargo 将代码放在 src 目录，同时项目根目录包含一个 Cargo.toml 配置文件。

Cargo 期望源文件存放在 src 目录中。项目根目录只存放 README、license 信息、配置文件和其他跟代码
无关的文件。使用 Cargo 帮助你保持项目干净整洁，一切井井有条。

对于已有项目，可以将其转化为一个 Cargo 项目。只需将代码放入 src 目录，并创建 Cargo.toml 文件。
通过 Cargo 构建和运行项目程序很方便，在项目目录下，输入下面的命令来构建项目：

    $ cargo build
    $ cargo build --release

命令会创建一个可执行文件，在 Windows 上是 target\debug\hello_cargo.exe，不是放在目前目录下。
可以通过这个命令运行可执行文件：

    $ ./target/debug/hello_cargo 
    Hello, world!
    
如果一切顺利，终端上应该会打印出 Hello, world!。首次运行 cargo build 时，也会使 Cargo 在项目
根目录创建一个新文件：Cargo.lock。这个文件记录项目依赖的实际版本，项目没有依赖，其内容比较少。永远也
不需要碰这个文件，让 Cargo 处理它就行了。

刚刚使用 cargo build 构建了项目，并运行了程序，使用 cargo run 命令可以同时编译并运行：

    $ cargo run
        Finished dev [unoptimized + debuginfo] target(s) in 0.0 secs
         Running `target/debug/hello_cargo`
    Hello, world!

注意这一次并没有出现表明 Cargo 正在编译 hello_cargo 的输出。Cargo 发现文件并没有被改变，就直接
运行了二进制文件。如果修改了源文件的话，Cargo 会在运行之前重新构建项目，并会出现像这样的输出：

    $ cargo run
       Compiling hello_cargo v0.1.0 (file:///projects/hello_cargo)
        Finished dev [unoptimized + debuginfo] target(s) in 0.33 secs
         Running `target/debug/hello_cargo`
    Hello, world!

还提供了一个叫 cargo check 命令，用来快速检查代码确保其可以编译，但并不产生可执行文件：

    $ cargo check
       Checking hello_cargo v0.1.0 (file:///projects/hello_cargo)
        Finished dev [unoptimized + debuginfo] target(s) in 0.32 secs

通常 cargo check 要比 cargo build 快得多，它省略了生成可执行文件的步骤，只提供代码检查功能，
用它持续检查确保代码可以通过编译，可以加速开发，只需要可执行文件时才运行 cargo build。

准备好发布时，使用 `cargo build --release` 来优化编译项目。这会在 target/release 而不是在
target/debug 目录下生成可执行文件。这些优化可以让 Rust 代码运行的更快，不过启用这些优化也需要
消耗更长的编译时间。

这也就是为什么会有两种不同的配置：一种是为了开发，你需要经常快速重新构建；另一种是为用户构建最终程序，
它们不会经常重新构建，并且希望程序运行得越快越好。

如果你在测试代码的运行时间，请确保使用 target/release 下的可执行文件进行测试。


对于简单项目， Cargo 并不比 rustc 提供了更多的优势，不过随着开发的深入，终将证明其价值。对于拥有
多个 crate 的复杂项目，交给 Cargo 来协调构建将简单的多。

即便 hello_cargo 项目十分简单，它现在也使用了很多在你之后的 Rust 生涯将会用到的实用工具。其实，
要在任何已存在的项目上工作时，可以使用如下命令通过 Git 检出代码，移动到该项目目录并构建：

    $ git clone someurl.com/someproject
    $ cd someproject
    $ cargo build



## ⚡ Packages Crates Modules
- https://doc.rust-lang.org/book/ch14-00-more-about-cargo.html
- https://doc.rust-lang.org/book/ch14-03-cargo-workspaces.html
- https://doc.rust-lang.org/book/ch07-00-managing-growing-projects-with-packages-crates-and-modules.html
- https://doc.rust-lang.org/rust-by-example/mod.html
- https://doc.rust-lang.org/rust-by-example/crates.html
- https://users.rust-lang.org/t/what-is-the-difference-between-dylib-and-cdylib/28847
- [Publishing a Crate to Crates.io](https://doc.rust-lang.org/book/ch14-02-publishing-to-crates-io.html)
- [Travis CI Rust documentation](https://docs.travis-ci.com/user/languages/rust/)
- [Paths in Expressions](https://doc.rust-lang.org/stable/reference/paths.html#paths-in-expressions)
- [Linkage](https://doc.rust-lang.org/reference/linkage.html)
- [Modules](https://doc.rust-lang.org/stable/reference/items/modules.html)
- [rustc Command-line arguments](https://doc.rust-lang.org/rustc/command-line-arguments.html)
- [The Manifest Format](https://doc.rust-lang.org/cargo/reference/manifest.html)
- [Extern crate declarations](https://doc.rust-lang.org/reference/items/extern-crates.html)
- [The Rust Edition Guide - Path and module system changes](edition-guide/src/rust-2018/path-changes.md)

当工程增长变大，可以分拆成小的模块进行管理，Rust 提供了完善的 Cargo Workspaces 工程管理功能，
测试、持续集成功能，配合 Crates.io 托管平台可以方便地与他人分享自己的成果，或共享他人的成果。

Rust 代码组织方式，从大到小的各种代码组织方式如下：

- `Packages`: A Cargo feature that lets you build, test, and share crates
- `Crates`: A tree of modules that produces a `library` or `executable`
- `Modules` and `use`: Let you control the organization, scope, and privacy of paths
- `Paths`: A way of naming an item, such as a struct, function, or module

Cargo new 命令就为工程生成一个顶层包，在配置文件 Cargo.toml `[package]` 部分定义。工程可以
同时拥有以下两个主要的代码文件，crate root files，即代表两个 crate，一个库和一个可执行程序：

- src/main.rs  --   cargo new hello_world --bin
- src/lib.rs   --   cargo new hello_world --lib

以上是 Rust 中的两种基本程序，二进制可执行文件 bin 和类库 lib，默认为 rlib 扩展名表示。

Cargo 用 Workspaces 的概念管理着项目的 Packages，在项目配置文件 Cargo.toml 所在目录定义了
Root package，即配置文件中的 `[package]` 区定义的顶级包。

在配置文件中，还可以添加 `[workspace]` 定义更多的包，它们都可以看作独立的工程：

    [workspace]
    members = ["member1", "path/to/member2", "crates/*"]
    exclude = ["crates/foo", "path/to/other"]
    default-members = ["path/to/member2", "path/to/member3/foo"]


在 Cargo.toml 中可以配置可执行程序和库：

    [lib]
    name = "foobar"
    crate-type = ["rlib"]

    [[bin]]
    name = "demo"
    path = "src/bin/demo.rs"

    [[example]]
    name = "demo"
    path = "example/demo.rs"

Rust 编译生成的库文件类型有以下这些：

- **lib** — Generates a library kind preferred by the compiler, currently defaults to rlib.
- **rlib** — A Rust static library.
- **dylib** — A Rust dynamic library.
- **cdylib** — A native dynamic library.
- **staticlib** — A native static library.
- **bin** — A runnable executable program.
- **proc-macro** — Generates a format suitable for a procedural macro library that may be loaded by the compiler.

Rust static library 是平台无关的特定静态中间库格式，可以供纯 Rust 代码项目之间的依赖和调用。
它是一个归档文件，包含很多 metadata 信息（比如可能的上游依赖信息），用来做后面的 linkage。

动态连接库是平台相关的库，根据平台使用不同扩展名，Linux 上为 .so, MacOS 上为 .dylib, Windows 
上为 .dll。动态库不会被链接到目标文件中，只是被程序动态调用。

过程宏是强大的编程工具，它通过提供抽象语法树的数据结构来实现各种功能，简化配置 proc-macro = true，
这种 crate 里面就能导出过程宏，被导出的过程宏可以被其它 crate 引用。


平台原生库一般指 C 规范动态库，这种动态库可以被其它语言调用，也就是跨语言 FFI 使用，因为几乎所有
语言都有遵循 C 规范的 FFI 实现。还包括 `staticlib` 静态库，Linux 和 MacOS 上编译会生成 .a 
文件，或在 Windows 上生成 .lib 文件。编译器会把所有实现的 Rust 库代码以及依赖的库代码全部编译
到一个静态库文件中，也就是对外界不产生任何依赖了。这特别适合将 Rust 实现的功能封装好给第三方应用使用。

在工程目录下有两个默认的目录：

- `/src/bin` 默认程序目录。
- `/src/examples` 示范程序默认存放目录。

这些程序可以通过指定 --bin 或 --example 选项来运行，而不用在 Cargo.toml 中配置，如果是其它
目录下的程序，就需要配置才能正确执行。

    cargo run --bin demo
    cargo run --example demo

这些目录代码使用同一套工程配置，即工程根目录下的 Cargo.toml 的配置对这些程序同样有效。

其它设置参考 The Manifest Format。


Crates 组织的是相关的函数，即可以当作函数库看待。如入门猜数字游戏，通过 `use rand::Rng;` 将
rand::Rng 导入到当前的作用域就可以使用，但它本身仍处于原有的作用域下。

Crates 中的代码可以分模块管理，以便于可读性和重用，通过 `mod` 关键字定义，关键字 `pub` 控制访问。
根据语法定义，有两种模块定义形式，`mod IDENTIFIER;` 这种更常用，它将模块分解到各个文件进行管理：

      unsafe? mod IDENTIFIER ;
    | unsafe? mod IDENTIFIER {
        InnerAttribute*
        Item*
      }

例如，一个库示范，在文件内定义模块，这里模块没有加 `pub` 前缀，表示私有不外部访问，只供父级访问：

```rust,ignore
// Filename: src/lib.rs
#[allow(unused)]
#[allow(dead_code)]
mod front_of_house {
    mod hosting {
        fn add_to_waitlist() {}

        fn seat_at_table() {}
    }

    mod serving {
        fn take_order() {}

        fn serve_order() {}

        fn take_payment() {}
    }
}
```

注意，模块命名使用蛇形规则，而不是驼峰命名规则，两者说明如下：

- Snake case name 即全用小写字母，单字分隔用下划线，file_name、line_number。
- Camel case name 变量起名字首字母小写，后面单词首字母大写，例如：fileName、lineNumber。

这个模块组织下的 Crates Tree 结构如下，默认隐式提供了 crate root 模块：

    crate
     └── front_of_house
         ├── hosting
         │   ├── add_to_waitlist
         │   └── seat_at_table
         └── serving
             ├── take_order
             ├── serve_order
             └── take_payment

有了这个 Crates Tree，就可以通过路径来引用对应的函数了，可使用绝对或相对路径，如果在相同模块中
还可以使用 `super::` 访问父模块或 `self::` 访问当前模块：

```rust,ignore
pub fn eat_at_restaurant() {
    // Absolute path
    crate::front_of_house::hosting::add_to_waitlist();

    // Relative path
    front_of_house::hosting::add_to_waitlist();
}
```

注意，公开访问的函数或类型需要前缀 `pub` 关键字，结构体成员之类也要前缀 `pub` 才可以公开访问。
在外部引用模块时，通过 `use` 关系字导入到当前作用域，可使用 `as` 起别名：

```rust,ignore
use crate::front_of_house::hosting;
use std::io::Result as IoResult;

// Re-exporting Names with pub use
pub use crate::front_of_house::hosting;

// use std::cmp::Ordering;
// use std::io;
use std::{cmp::Ordering, io};

// bring all by *, the glob operator
use std::collections::*;
```

需要使用外部模块，就配置 Cargo.toml `[dependencies]`，然后通过 Cargo 命令安装依赖。 

如果所有函数都定义在同一个文件中，当代码变多后，直接按模块名的结构新建代码文件，即可完成模块分拆：

    src/front_of_house/hosting.rs


以下是两种模块风格的目录树：

    src/
    +-- lib.rs
    +-- util.rs
    +-- util/
        +-- config.rs

    src/
    +-- lib.rs
    +-- util/
        +-- mod.rs
        +-- config.rs

|     Module Path     | Filesystem Path | File Contents |
|---------------------|-----------------|---------------|
| crate               | lib.rs          | mod util;     |
| crate::util         | util.rs         | mod config;   |
| crate::util::config | util/config.rs  |               |

模块路径与文件路径的关系说明如下：

- lib.rs 文件定义私有模块 `mod util;` 对应 uitl.rs，通过 `util::` 或者 `crate::util::` 命名空间去访问模块内容；
- util.rs 文件定义私有模块 `mod config;` 对应 util/config.rs，所以在 lib.rs 中不可以访问 `util::config` 模块，除非它定义为 `pub`。

当模块目录下包含 `mod.rs` 时，目录名即等价于模块名，对于上面的 `crate::util` 模块，可以创建
一个 `util/mod.rs` 文件，但不能同时存在和目录同名的 `util.rs`。


库项目编译后就可以被其它项目引用：

    cargo build --release
       Compiling hello_world v0.1.0 (path\to\rust\lib)
        Finished release [optimized] target(s) in 0.64s

只需要配置一下依赖：

    [dependencies]
    hello_world = { path = "../hello_world" }

这些模块编译后生成的 lib 输出就称之为 Crates，习惯上避免引入过多的名词，可以叫做模块，是共享发布
的模块。可以通过 crates.io 社区，可以与世界分享你的 Crates，使用 Cargo 打包、发布命令上载托管。

发布 Crates 时要注意，发布是常驻，即永远不能覆盖同版本，并且无法删除代码，但是，可以发布的版本数量
没有限制。而名字则采取先用先得原则，你不能使用别人已经用过的名字。

你需要在 crates.io 注册一个帐户，获取 API Token，并运行 cargo login 命令联通账号即可。

另外，Rust 还有 Extern crate 声明的语法：

    extern crate std as ruststd;

可以用来将指定的 Crate 链接到当前的库中，同时，它导入模块下的所有项到当前库。


Cargo 下载源可以按需要进行配置，也可以配置本地源。大陆用户可能因为网络原因导致命令卡死：

    Blocking waiting for file lock on package cache

这个问题也可能是 Cargo.lock 被其他程序独占打开，一般关掉那个程序就行。还有一个可能是缓存目录下的 
`~/.cargo/.package_cache` 被加锁阻塞，删除它可以解决。

注册源本身提供 git 索引，该存储库匹配 crates.io 索引格式，可以指示 Cargo 从哪里下载依赖包。
Cargo 源有两种配置方式，全局配置需要创建 $HOME/.cargo/config 文件，TOML 格式，然后在配置文件
内写入配置内容。在项目中，需要在 Cargo.toml 同级目录创建 `.cargo/config` 文件。

以下国内源配置镜像配置一个即可，无需全部：

    [source.crates-io]
    registry = "https://github.com/rust-lang/crates.io-index"

    # 中国科学技术大学
    [source.ustc]
    registry = "https://mirrors.ustc.edu.cn/crates.io-index"
    # or use git protocol
    # registry = "git://mirrors.ustc.edu.cn/crates.io-index"

    # 上海交通大学
    [source.sjtu]
    registry = "https://mirrors.sjtug.sjtu.edu.cn/git/crates.io-index/"

    # 清华大学
    [source.tuna]
    registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"

    # rustcc社区
    [source.rustcc]
    registry = "https://code.aliyun.com/rustcc/crates.io-index.git"

协议推荐使用 git，但对于 HTTPS 和 git 协议，一般各镜像源都支持，并且是可以互换的。

Cargo 运行受 package cache 文件锁定影响，可以尝试删除 `~/.cargo/.package-cache` 文件。
Cargo 可以和 Travis CI 或 GitLab CI 等持续集成工具一起工作。

测试库与 Travis CI 的配置文件 .travis.yml：

    language: rust
    rust:
      - stable
      - beta
      - nightly
    matrix:
      allow_failures:
        - rust: nightly

测试库与 GitLab CI 的配置文件 .gitlab-ci.yml：

    stages:
      - build

    rust-latest:
      stage: build
      image: rust:latest
      script:
        - cargo build --verbose
        - cargo test --verbose

    rust-nightly:
      stage: build
      image: rustlang/rust:nightly
      script:
        - cargo build --verbose
        - cargo test --verbose
      allow_failure: true


## ⚡ HelloWorld🔆🔅
- [The Rust Programming Language](https://doc.rust-lang.org/book/ch01-00-getting-started.html)
- [The Rust Programming Language zh_CN](https://kaisery.github.io/trpl-zh-cn/ch01-02-hello-world.html)
- [初识 Rust](https://wudaijun.com/2020/02/rust-basic/)
- [2.101. lang_items](https://doc.rust-lang.org/unstable-book/language-features/lang-items.html)
- [The Rust Programming Language - Basic Rust Literacy - Accepting Command Line Arguments](ch12-01-accepting-command-line-arguments.md)

Rust 并不关心代码的存放位置，不过建议在工作目录中，使用 cargo 工具创建工程目录，存放所有项目。

打开终端并输入 cargo new 命令创建一个工程，它会自动按给定的工程名创建目录，并包含一段示范代码。

    cargo new demo

    cd demo
    cargo build
    cargo run
    cargo check

源文件命名为 `main.rs`，Rust 源文件总是以 .rs 扩展名结尾。文件名包含多个单词，使用下划线分隔。
例如命名为 hello_world.rs，而不是 helloworld.rs。Cargo 命令可以生成工程、编译或者执行程序。

工程包含配置文件 Cargo.toml：

    [package]
    name = "hello_cargo"
    version = "0.1.0"
    authors = ["Your Name <you@example.com>"]
    edition = "2018"

    [dependencies]

现在打开刚创建的示例，文件名: main.rs

    fn main() {
        println!("Hello, world!");
    }

保存文件，并回到终端窗口。在 Linux 或 macOS 上，输入 rustc 编译命令，编译并运行文件：

    $ rustc main.rs
    $ ./main
    Hello, world!

在 Windows 上，输入命令 .\main.exe，而不是 ./main：

    > rustc main.rs
    > .\main.exe
    Hello, world!

不管使用何种操作系统，终端应该打印字符串 Hello, world!。

简单程序项目编译使用 rustc 是没问题的，但是 cargo 这个工具管理项目更方便，并让代码易于分享。如果
你有 C/C++ 背景，可以发现这与 gcc 和 clang 类似。编译成功后，Rust 会输出一个二进制的可执行文件。


程序中 main() 是一个程序入口函数：在可执行的 Rust 程序中，它总是最先运行的代码。注意 main 函数
没有参数也没有返回值。如果有参数的话，它们的名称应该出现在 () 括号中。

还须注意，函数体被包裹在 {} 花括号中，所有函数体都要用花括号包裹起来。一般来说，将左花括号与函数声明
置于同一行并以空格分隔，是良好的代码风格。

如果你希望在 Rust 项目中保持一种标准风格，rustfmt 会将代码格式化为特定的风格。Rust 团队计划最终
将该工具包含在标准 Rust 发行版中，就像 rustc。

在 main() 函数中代码完成这个简单程序的所有工作：在屏幕上打印文本。

这里有四个重要的细节需要注意：

- 首先 Rust 的缩进风格使用 4 个空格，而不是 1 个制表符（tab）。
- 第二，println! 调用了一个 Rust 宏（macro）,现在只需记住，符号后出现 ! 就意味着调用的是宏而不是普通函数。
- 第三，"Hello, world!" 是一个字符串。这个字符串作为一个参数传递给 println!，字符串将被打印到屏幕上。
- 第四，代码行以分号结尾（;），这代表一个表达式的结束和下一个表达式的开始。大部分 Rust 代码行以分号结尾。

Rust 和其他语言的 main 函数不同，没有入参或返回值，需要使用专门的函数处理入参和返回值。

    fn main() {
        for arg in std::env::args()
        {
            println!(arg);
        }

        std::process::exit(0);
    }

通过进程退出函数 exit 给系统一个返回值。

    let args: Vec<String> = env::args().collect();

要点：

- `Vec<String>` 字符串向量，引用 args() 返回的 Args 结构体集合；
- `&args[0]` 借用参数引用，因为外部传入的 String 所有权不能转移；
- `{:?}` 打印模板使用通配符号打印多个值；



除此之外，标准库中的某些 type、trait、function、macro 等等实在太常用，因此标准库提供默认模块
std::prelude，在这个模块中导出了一些最常见的类型、trait 等，编译器会自动为用户启用，相当于：

    use std::prelude::*;

这样，标准库里面的这些最重要的类型、trait 等名字就可以直接使用，而无须每次都写全称或者 use 语句。

如果你熟悉动态语言，如 Ruby、Python 或 JavaScript，则可能不习惯将编译和运行分为两个单独的步骤。
Rust 是一种预编译静态类型（ahead-of-time compiled）语言，这意味着你可以编译程序，并将可执行
文件送给其他人，他们甚至不需要安装 Rust 就可以运行。


接下来，了解一些 Rust 最有特色的功能：

- Mutable & immutable 数据的可修改与不可修改，对应 &mut T 和 &T 两个引用方式；
- Ownership 数据的所有权管理，对应所有权的出借和转移两种情况；
- Memory allocation and lifetime 变量的内存分配与生命周期；
- Traits & Polymorphism 面向对象编程的接口、继承与多态；
- Procedural Macros 强大的宏程序编程，可以对 Rust 代码做语法树处理；

Rust 提供了一种接口类型 Traits，意思为对象的特质，相当于其它语言中的 interface 接口类型。先定义
Trait 接口所具有的常量、方法以及类型，然后，为需要这种接口功能的类型实现它，使得该类型具备该 Trait
的功能，是组合(composite)的方式。

接口通常和多态联系，通过接口的继承(inheritance)，使得实现同一个 Trait 接口的类型都有同种性质，
而这些类型又通过接口的父子关系具有了多态性，可以进行 is a 判断其所有类型。

Rust 类型系统使用的是鸭子模型(Duck Typing)，即只要叫起来像鸭子，它就可以当成鸭子来使用。也就是说，
真正需要的不是鸭子，而是像鸭子一样的东西。

Rust 的类型系统基于组合思维，不像 C++/Java 通过类以及继承层次结构来包装，组合方式是函数式编程中
实现面向对象编程的一种有效手段。并且，组合方式比类封装继承方式更能表达真实世界。

比如，真实世界中的鸟类，它会飞，那么定义类 Bird 包含了一个 fly 方法，突然有一天需要添加鸵鸟这个
类型，竟然发现，表达鸵鸟这种不会飞的鸟时，就需要好好重新设计类的继承关系。而组合 traits 特质接口
就不存在这的问题。Rust 的结构体也使用类似的方式，需要什么方法就使用 impl 关键字扩展相应的方法。


接下来解析一下**所有权**概念，和各种处理方式：

- `shared reference` 共享出借所有权 &T，如 `let a = &b;`，将 b 出借到 a；
- `mutable reference` 可变出借所有权 &mut T，如 `let a = &mut b;`，通过 a 可以修改 b 的数据；
- `ownership move` 转移所有权，如 `let a = b;`，所有权由 b 转移给 a；

注意，标量数据类型，如数值、字符、布尔等默认有 Copy trait 行为，也就不会有所有权转移。

所有权 `Ownership` 概念是较新奇的观念，是 Rust 零成本抽象中很重要的一个组成，零成本抽象即是没有
使用的功能就不会带来硬件资源消耗。所有权指出每一个值（内存数据资源）某一时刻只能被一个变量拥有，变量
即为 owner，超出作用域后，值会被销毁，即每个资源引用都有相应的生命周期，在编译期即完成静态资源管理，
不必在程序运行时动态回收资源。

所有权 Ownership 是 Rust 的特色，通过将变量与内存数据的所有权绑定，可以实现静态垃圾回收机制，从而
避免了运行时的垃圾回收工作。声明变量时，使用 let 声明只读变量，表示不可以通过它修改内存数据。需要修改
内存的变量声明为 let mut，这可以让变量拥有相应内存的所有权，并且后续可以出借其拥有的所有权，或者将
所有权转交（move）给其它变量。

下表列出 Rust vs. C++ 语言三种传参方式声明方式，注意 Rust 只有标量才是传值方式：

| 传参方式 |     Rust 声明     |      C/C++ 声明      |
|----------|-------------------|----------------------|
| 传值     | fn foo(x: T)      | void foo(T x)        |
| 只读引用 | fn foo(x: &T)     | void foo(const T &x) |
| 读写引用 | fn foo(x: &mut T) | void foo(T &x)       |

下表给出了三种传参方式的函数调用方式：

| 传参方式 |  rust 调用  | c++ 调用 |
|----------|-------------|----------|
| 传值     | foo(x)      | foo(x)   |
| 只读引用 | foo(&x)     | foo(&x)  |
| 读写引用 | foo(&mut x) | foo(&x)  |

可以看出，因为 const 关键字的使用可以出现在函数多处，C++ 调用形式无法简洁表达传参类型，表达式混乱。
而前身 C 语言表达能力更是不足，Rust 则改进了这些语法问题，声明和调用形式完全对应，语法、语义更简明。


所以，在 Rust 程序代码中，变量之间的赋值不再是简单的 = 运算符操作，关键是涉及了所有权的处理方式。
并且，还有 mutable & immutable 属性，只有可变的声明方式下，变量才可以进行多次赋值，或者使用
可变引用：

```rust
    // Immutable variable
    let a;
    a = 1;
    // a = 2;
    // ^^^^^ cannot assign twice to immutable variable
    
    // Mutable variable
    let mut b: i32 = 2;
    b = 3;
    println!("a + b = {}", a + b);
```

变量与所有权的结合，还使得变量的生命周期更容易管理，在不同内存区的变量，堆（Heap）与栈（Stack），
变量的生存期就不相同。位置栈上的变量，只要函数调用返回，便会释放掉栈内存，并销毁其中的变量，这些变量
就无法返回到函数外部，并被不合法地使用。而这种问题在 C/C++ 语言上，非常容易出现，并且新手根本不会
注意到这种问题有什么后果。

    fn main() {
      let i = 3; // Lifetime for `i` starts. ────────────────┐
      { //                                                   │
          let borrow1 = &i; // `borrow1` lifetime starts. ──┐│
          println!("borrow1: {}", borrow1); //              ││
      } // `borrow1 ends. ──────────────────────────────────┘│
      { //                                                   │
          let borrow2 = &i; // `borrow2` lifetime starts. ──┐│
          println!("borrow2: {}", borrow2); //              ││
      } // `borrow2` ends. ─────────────────────────────────┘│
    } // Lifetime ends. ─────────────────────────────────────┘


所有权只在变量存活时有效，当变量超出作用域后，如共括号作用域、函数作用域等等，变量就失效了，所有权也
一并消失。当变量拥有所有权时，可以通过指定语法移动和出借(Moves and Borrowing)给其它变量使用。

所有权规定，在使用引用时，有两条约束：

- 不能同时使用 mutable & immutable 引用，避免数据读写并发执行；
- 不能存在多个 mutable 引用，避免数据竞争；

这两条约束可以给 Rust 程序编译优化带来极大的好处，它们避免了编译期就出现 `data races`，这种类似
多线程的 `race condition` 状况，发生在以下情形，而 Rust 可以在编译期就发现这种问题：

- 同时有多个指针访问相同数据。
- 至少有一个指针在进行写入操作。
- 没有同步机制来约束数据访问。

前面说变量超出作用域就会失效，同时 Rust 会执行一个 `drop()` 函数来做清理工作。假设没有实现所有权
抽象机制，在变量相互赋值后，就会指向同一块内存，它们失效时将会有两个 `drop()` 函数被调用，这就会
对同一内存地址执行两次 `free()` 操作，破坏内存结构。

通过所有权机制，时刻只有一个变量引用同一内存地址，永远不会出现重复释放同一内存的错误。

如果一个类型的任何部分实现了 Drop trait，则无法使用 Copy trait。

所有标量类型都能使用 Copy trait，类型有如下这些，包含所有原始值类形，除了字符串：

- All the integer types, such as `u32`.
- The Boolean type, `bool`, with values true and false.
- All the floating point types, such as `f64`.
- The character type, `char`.
- 还有包含以上类型的元组 Tuples，例如 (i32, i32)

特别地，对于标量数据类型即除了字符串以外的原始类型，如数值、字符、布尔等在函数之间传递时，会按值传递，
会进行 Copy trait 操作，也就不会有所有权转移。虽然，使用引用或者可变引用的方式传递参数才不会传值，
但这两种情况下所有权只有出借，没有移动。除非使用其它方式，管理标量的所有权，例如 Box 指针：

```rust
    let a = Box::new(123);
    let c = a; // a moved
    println!("a move into c {}", c);
    // println!("move {}", a);
    //                      ^ value borrowed here after move
```

println! 宏只借用所有权，不会转移参数的所有权。

Rust 提供了 unsafe 特性，通过智能指针，Smart Pointers，简化了对 Heap 内存的使用。内存装箱使用
std::boxed::Box 或者 alloc::boxed::Box 智能指针：

```rust
    let five = 5;           // 5 in Stack memory
    let five = Box::new(5); // 5 in Heap memory
```

还有 Rc<T>，Weak<T> 可以使用内存存在多个所有权，在不同的位置使用。通常情况下，可以很准确的知道变量
拥有某个值，默认的所有权机制可以很好地管理。但是在有些情况下，一个变量可能会需要有多个所有者。例如，
Graphs 数据结构中，多个边可能指向相同的终点，节点从概念上讲为指向它的各条边所拥有。而引用计数器即可以
类型来满足多所有权的需要，引用计数 Reference counting (RC) 也是传统的内存回收技术，如 Python 就
使用引用计数器来管理内存的回收。


    use std::env::{args, Args};

    fn main() {
        let mut _args: Args = args();
        let _arg0: Option<String> = _args.nth(0);
        let _argc: usize = _args.len();
        println!("Hello Rust, argc {}, args[0] is {}", _argc, _arg0.unwrap());
    }


变量的生命周期还可以进行显式标注，Explicit annotation，通过标注可以改变默认的生存周期，使得被
依赖的变量可以生存更长的时间。例如，寿命表示法（注：'a: 'b，表示有效期 a > b），又如 'static 静态
变量标注，表示静态有效期，即不依赖任何量。

生命周期注解的语法格式如下，前缀一个 apostrophe：

- `&i32` 常规语法表示引用；
- `&'a i32` 带有显式生命周期表示的引用；
- `&'a mut i32` 带有显式生命周期的可变引用；

通常，单个的生命周期标注本身是没什么意义的，因为 Rust 只需要通过它来了解多个引用之间的生命周期关系。

比如，以下示范中有两个 `longest()` 函数，其中一个带有生命周期标注信息的版本才可以正常工作：

```rust,ignore
// normal reference version
// error[E0106]: missing lifetime specifier
// = help: this function's return type contains a borrowed value, but the signature does not say whether it is borrowed from `x` or `y`
//                              ↓ expected named lifetime parameter
fn longest(x: &str, y: &str) -> &str {
    if x.len() > y.len() { x } else { y }
}

// lifetime annotated version
fn longest<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() { x } else { y }
}

fn main() {
    let string1 = String::from("abcd");
    let string2 = "xyz";

    let result = longest(string1.as_str(), string2);
    println!("The longest string is {}", result);
}
```



开发工具如果配置了 Rust Analyzer 和  Language Server Protocol (LSP)，那么可以在函数、结构体
前头使用一些标注来禁止显示警告信息，避免在编译时出现过多的内容，例如：

- #[allow(dead_code)] 表示允许死代码，即使用代码存在没有使用的字段、变量、函数也不会触发警告信息。
- #[allow(unused_variables)] 表示允许存在没有使用的变量，也可以直接将变量改名为 _ 开头。

具体参考 Guide to Rustc Development - Analysis - Errors and Lints

Rust 有一套独特的处理异常情况的机制，它并不像其它语言中的 try 机制，或 Exception 类来表示错误。
函数中的返回值和函数的运行状态相关，通常和错误处理相结合。

Rust 的分层错误处理模式，如下，：

- 如果合理期望缺失，则使用 `Option<T>`。
- 如果错误可以合理地处理，则使用 `Result<T, E>`。
- 如果错误无法合理地处理，线程 panics。
- 如果发生灾难性的错误，程序就会中止。

Rust 程序中一般会出现两种错误：

- 可恢复错误，对应返回 Result<T, E>。
- 不可恢复错误，对应 panic! 宏，它会调用编译器提供的代码终止程序运行。

所以，函数有两个常见的返回类型：

    pub enum Option<T> {
        None,
        Some(T),
    }

    pub enum Result<T, E> {
       Ok(T),
       Err(E),
    }

所有可能发生错误的函数都会返回一个标准的 `Result<T, E>` 枚举类型，它有两个泛型参数，分别用于两个取值：

- `Ok(value)` 表示操作成功的成员，包装了一个 `T` 型值；
- `Err(why)` 表示操作失败的成员，通常和 panic 关联，包装了一个 `E` 型值，这个值通常包含出错的参考信息；

结合模式匹配，可以对函数可能出现的值进行判断：

    if let Ok(some_value) = fun() {
        // do something with some_value
    }

调用一个返回值为 Result 类型的函数，那么就需要处理可能的两种状态，Ok 或者 Err，如果可以假定函数
永远不会出错，那么就可以直接调用 unwrap() 方法消费掉返回值，或者作为当前函数的返回值。Result 必需
要作出处理，特别是可能出错的情况，否则 Rust 就不会允许程序静默地通过编译，并给出一个警告：

    warning: unused `Result` that must be used

一般函数的返回值在最后一行，可以不写 return 和结尾的分号，因为后面没有更多的语句了。



## ⚡ Printing 打印信息
- https://doc.rust-lang.org/rust-by-example/hello/print.html
- https://doc.rust-lang.org/std/fmt/

打印信息使用的是在 std::fmt 模块定义的宏：

- `format!`: write formatted text to String
- `print!`: same as `format!` but the text is printed to the console (`io::stdout`).
- `println!`: same as `print!` but a newline is appended.
- `eprint!`: same as `format!` but the text is printed to the standard error (`io::stderr`).
- `eprintln!`: same as `eprint!` but a newline is appended.

以 println!() 为例，它调用的是 io 的打印函数：

    /// # Examples
    ///
    /// ```
    /// println!(); // prints just a newline
    /// println!("hello there!");
    /// println!("format {} arguments", "some");
    /// let local_variable = "some";
    /// println!("format {local_variable} arguments");
    /// ```
    #[macro_export]
    #[stable(feature = "rust1", since = "1.0.0")]
    #[cfg_attr(not(test), rustc_diagnostic_item = "println_macro")]
    #[allow_internal_unstable(print_internals, format_args_nl)]
    macro_rules! println {
        () => {
            $crate::print!("\n")
        };
        ($($arg:tt)*) => {{
            $crate::io::_print($crate::format_args_nl!($($arg)*));
        }};
    }

格式化模板参考：

- `{}` 直接打印字符串
- `{0}` 指定参数编号
- `{name}` 指定命名参数
- `{:#?}` 美化调试信息，冒号后面的表示格式化参数
    - `#?` - pretty-print the Debug formatting
    - `#x` - precedes the argument with a 0x
    - `#X` - precedes the argument with a 0x
    - `#b` - precedes the argument with a 0b
    - `#o` - precedes the argument with a 0o
    - ? ⇒ Debug
    - x? ⇒ Debug with lower-case hexadecimal integers
    - X? ⇒ Debug with upper-case hexadecimal integers
    - b ⇒ Binary
    - o ⇒ Octal
    - p ⇒ Pointer 打印指针指向地址
    - x ⇒ LowerHex
    - X ⇒ UpperHex
    - e ⇒ LowerExp
    - E ⇒ UpperExp

使用示范：

- println!("the PI is {:.2}", 3.141);
- println!("{:?} months in a year.", 12);
- println!("{1:?} {0:?} is the {actor:?} name.", "Slater", "Christian", actor="actor's");
- format!("{}", foo) -> "3735928559"
- format!("0x{:X}", foo) -> "0xDEADBEEF"
- format!("0o{:o}", foo) -> "0o33653337357"
- assert_eq!(format!("Hello {{}}"), "Hello {}");

变量之所以会按格式打印出来，是因为实现了相应的 Traits 对象方法，参考 10. Generic Types, Traits, and Lifetimes 章节的内容：

- `fmt::Debug`: Uses the `{:?}` marker. Format text for debugging purposes.
- `fmt::Display`: Uses the `{}` marker. Format text in a more elegant, user friendly fashion.
- `fmt::Binary`: Uses the `{:b}` marker. Format text in binary form.
- `LowerExp`    e formatting.
- `LowerHex`    x formatting.
- `Octal`   o formatting.
- `Pointer` p formatting.
- `UpperExp`    E formatting.
- `UpperHex`    X formatting.
- `Write`   A trait for writing or formatting into Unicode-accepting buffers or streams.

示范，实现 `fmt::Display` Trait 对象的 `fmt()` 方法，还有通过元编程继承实现 `Debug`：

```rust,ignore
#![allow(unused)]
use std::fmt::Display;
use std::fmt::Formatter;
use std::fmt::Result;

fn announce(value: impl Display) {
    println!("Behold! {}!", value);
}

#[derive(Debug)]
struct List(i32, i32, i32);

impl Display for List {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result {
        write!(f, "{{ 1st: {}, 2nd: {}, 3rd: {} }}", self.0, self.1, self.2)
    }
}

fn main() {
   let nums = List(40, 41, 42);
   announce(nums);
}
```


为泛型实现 Display 类型调试方法：

```rust,ignore
use std::fmt;
use std::fmt::Display;
use std::fmt::Formatter;

struct Pair<T> {
    x: T,
    y: T,
}

impl<T> Pair<T> {
    fn new(x: T, y: T) -> Self {
        Self { x, y }
    }
}

impl<T: Display + PartialOrd> Pair<T> {
    fn cmp_display(&self) {
        if self.x >= self.y {
            println!("The largest member is x = {}", self.x);
        } else {
            println!("The largest member is y = {}", self.y);
        }
    }
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        write!(f, "({}, {})", self.x, self.y)
    }
}
fn main() {
    // let pair = Pair{ x:1, y:2};
    let pair = Pair::new( 1, 2 );
    println!("The largest char is {}", pair);
}
```

以上示范，不能调用实现的 Display `fmt()` 方法，未知原由。

    2  |     println!("The largest char is {}", pair);
       |                                        ^^^^ `Pair<{integer}>` cannot be formatted with the default formatter



## ⚡ Guessing Game
- https://doc.rust-lang.org/book/ch02-00-guessing-game-tutorial.html
- https://doc.rust-lang.org/book/ch06-00-enums.html
- https://docs.rs/rand/0.7.3/rand/index.html#traits
- C++ 工程师的 Rust 迁移之路 https://zhuanlan.zhihu.com/p/75385189

接下来的猜数字示范了更多的内容，文件名: src/main.rs

```rust,ignore
use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
  println!("Guess the number!");

  let secret_number = rand::thread_rng().gen_range(1, 100);

  loop {
    println!("Please input your guess.");
    let mut guess = String::new();

    io::stdin()
      .read_line(&mut guess)
      .expect("Failed to read line");
    
    let guess: u32 = match guess.trim().parse() {
      Ok(num) => num,
      Err(_) => continue,
    };

    println!("You guessed: {}", guess);

    match guess.cmp(&secret_number) {
      Ordering::Less => println!("To small!"),
      Ordering::Greater => println!("Too large!"),
      Ordering::Equal => {
        println!("That is it!");
        break;
      }
    }
  }
}
```

现在程序开始变得有意思了！这一小行代码发生了很多事。

要点：

- `prelude` 模块，默认导入的模块；
- `rand::Rng` 依赖了新模块，需要在 Cargo.toml 配置相应依赖；
- `std::io` 输入输出模块，这里用来读取用户输入的字符串；
- `std::cmp::Ordering` 比较模块，引入比较枚举量，结合 match 模式匹配返回或执行指定内容；
- 字符串对象实例化，`String::new();`，并调用字符类型方法 `trim()` `parse()` 进行清理和转换类型；
- 信息打印模板使用了 `{}` 作为变量占位符，在输出字符串时被真正的内容替换，其中感叹号表示是一个宏，而不是函数；
- `&` 操作符号取对象引用；
- `match` 操作执行模式匹配，并返回相应的值；

Cargo.toml

    [dependencies]
    rand = "0.5.5"

默认情况下，Rust 将 `prelude` 模块中少量的类型引入到每个程序的作用域中。如果需要的类型不在 prelude 中，你必须使用 `use` 语句显式地将其引入作用域。`std::io` 库提供很多有用的功能，包括接收用户输入的功能。

可变量与不可变量定义方式：

Rust

    let foo = 5; // immutable
    let mut bar = 5; // mutable
    bar = foo

C++

    int number = 0;
    const int const_number = -100;
    number = const_number;

这里可以看到，在 Rust 中，变量默认是不可变的，除非加了 `mut` 关键字，但是它们都属于变量。

Rust 的常量定义使用关键字 `const`，并且需要指定数据类型。常量可以在任何范围内定义，并且可以在多个代码块中使用，给常量赋值时当然要使用常量表达式，不能使用函数的返回值或者是计算式。

注意这是一个 let 语句，用来创建 变量（variable），并把它绑定到等号右侧的值上。在变量名前使用 mut 来使一个变量可变，即 `mutable`，在 Rust 中，变量默认是不可变的 `immutable`，变量与可变性部分详细讨论这个概念。

String::new 这个函数会返回一个 String 的新实例。String 是一个标准库提供的字符串类型，它是 UTF-8 编码的可增长文本块。 `::` 语法表明 new 是 String 类型的一个`关联函数` associated function。关联函数是针对类型实现的，在这个例子中是 String，而不是 String 的某个特定实例。一些语言中把它称为 静态方法 static method。

`read_line` 获取用户在标准输入中键入内容，将其存入一个字符串中，因此它需要字符串作为参数。这个字符串参数应该是可变的，以便 read_line 将用户输入附加上去。

`&` 表示这个参数是一个 引用（reference），它允许多处代码访问同一处数据，而无需在内存中多次拷贝。引用是一个复杂的特性，Rust 的一个主要优势就是安全而简单的操纵引用。完成当前程序并不需要了解如此多细节。

结合 match 流程控制，根据函数的返回 `Result<T, E>` 枚举值 Ok or Err 处理潜在的错误：

    .expect("Failed to read line");

枚举与 match 模式匹配语法是个新奇特性，很像 Erlang 的模式匹配。



## ⚡ Windows Resource(ICO) 
- https://crates.io/crates/winres
- https://docs.rs/winres/0.1.11/winres/

在 Windows 平台，使用 winres 模块来处理资源数据，生成 Windows resource (.rc) 文件用于 Microsoft rc.exe 编译器或者 GNU windres.exe。

需要预先安装以下任一工具：

- rc.exe from the Windows SDK
- windres.exe and ar.exe from minGW64

在构建脚本 build.rs 中使用 `WindowsResorce::compile()` 方法，它会编译资源，并指导 Cargo 链接资源到程序文件。

```rust,ignore
// Example
if cfg!(target_os = "windows") {
    let mut res = winres::WindowsResource::new();
    res.set_icon("test.ico")
       .set("InternalName", "TEST.EXE")
       // manually set version 1.0.0.0
       .set_version_info(winres::VersionInfo::PRODUCTVERSION, 0x0001000000000000);
    res.compile()?;
}
```

在自动构建脚本 build.rs 中给程序设置一个图标，参考 deno cli 工程：

```rust,ignore
  #[cfg(target_os = "windows")]
  {
    let mut res = winres::WindowsResource::new();
    res.set_icon("deno.ico");
    res.set_language(winapi::um::winnt::MAKELANGID(
      winapi::um::winnt::LANG_ENGLISH,
      winapi::um::winnt::SUBLANG_ENGLISH_US,
    ));
    res.compile().unwrap();
  }
```

可以在 Cargo.toml 配置各个平台的依赖，以下摘取关于 Windows 资源相关部分：

```rust,ignore
[target.'cfg(windows)'.build-dependencies]
winapi = "0.3.9"
winres = "0.1.11"

[target.'cfg(windows)'.dependencies]
fwdansi = "1.1.0"
winapi = { version = "0.3.9", features = ["knownfolders", "mswsock", "objbase", "shlobj", "tlhelp32", "winbase", "winerror", "winsock2"] }

[target.'cfg(unix)'.dependencies]
nix = "0.19.1"

[target.'cfg(unix)'.dev-dependencies]
exec = "0.3.1" # Used in test_raw_tty

[package.metadata.winres]
# This section defines the metadata that appears in the deno.exe PE header.
OriginalFilename = "deno.exe"
LegalCopyright = "© Deno contributors & Deno Land Inc. MIT licensed."
ProductName = "Deno"
FileDescription = "A secure runtime for JavaScript and TypeScript."
```


## ⚡ mdBook 电子书框架
- [mdbook - Creates a book from markdown](https://crates.io/crates/mdbook)
- [Crate mdbook](https://docs.rs/mdbook/0.4.7/mdbook/)
- [mdbook User Guide](https://rust-lang.github.io/mdBook/)
- [mdBook Documentation](https://rust-lang.github.io/mdBook/)
- [mdbook-katex 数学公式插件](https://github.com/lzanini/mdbook-katex)
- [LaTex functions](https://katex.org/docs/supported.html)
- [MathJax](https://www.mathjax.org/)
- [EPUB generator](https://crates.io/crates/mdbook-epub)
- [Syntax Highlighting](https://highlightjs.org/)
- [Handlebars - a simple templating language](https://handlebarsjs.com/guide/)

The Rust Programming Language 官方这本电子书本身就是一个 Cargo 工程，在 listings 目录下提供的配套代码。

另外，src 目录是电子书文档，使用类似 Gitbook 的 mdBook 框架，目前版本 mdbook-0.4.7。

支持功能：

- 快捷键支持
- 关键字搜索
- 主题样式
- 集成语法高亮 Highlight.js
- 集成数学公式 MathJax
- 模板集成 Handlebars

安装使用：

    git clone git@github.com:rust-lang/mdBook
    git clone git@github.com:rust-lang/book

    cargo install mdbook [--vers version-num]
    mdbook build

安装后会编译生成 mdbook 命令，执行 mdbook build 编译项目就可以在 book 目录生成电子书。

其它命令：

- mdbook watch 监视 markdown 文件，自动重新生成。
- mdbook serve 启动本地开发服务器，并监视文件改动，Web 服务默认地址 http://localhost:3000，主机、端口可以配置 `--port <port>`。
- mdbook clean 清理生成文件。
- mdbook init --theme 初始化模板文件。

在 Cargo 工程根目录中，可以创建一个 rust-toolchain 文件来指定工程使用的 Rust 工具链版本，如：

    1.50.0

这样，就需要安装相应的工具链才能继续操作，否则提示错误消息：

    >rustup default stable
    info: using existing install for 'stable-x86_64-pc-windows-msvc'
    info: default toolchain set to 'stable-x86_64-pc-windows-msvc'

      stable-x86_64-pc-windows-msvc unchanged - rustc 1.44.0 (49cae5576 2020-06-01)

    error: invalid channel name '1.50' in '\\?\home\book-master\rust-toolchain'
    error: caused by: invalid toolchain name: '1.50'

项目结构生成：

    mdbook init <directory>

    book-test/
    ├── book
    └── src
        ├── title-page.md
        ├── foreword.md
        ├── chapter_01.md
        ├── appendix-00.md
        └── SUMMARY.md

生成时，md 文件会处理成 HTML 嵌入到 handlebars 模板文件 index.hbs，你可以在工程目录中创建自己的模板文件来替换它，而不是使用 mdBook 自带的。

在工程根目录下创建 theme 目录，并且可以创建以下文件替换默认的模板文件：

- `index.hbs` is the handlebars template.
- `head.hbs` is appended to the HTML `<head>` section.
- `header.hbs` content is appended on top of every book page.
- `css/` contains the CSS files for styling the book.
    - `css/chrome`.css is for UI elements.
    - `css/general`.css is the base styles.
    - `css/print`.css is the style for printer output.
    - `css/variables`.css contains variables used in other CSS files.
- `book.js` is mostly used to add client side functionality, like hiding / un-hiding the sidebar, changing the theme, ...
- `highlight.js` is the JavaScript that is used to highlight code snippets, you should not need to modify this.
- `highlight.css` is the theme used for the code highlighting.
- `favicon.svg` and favicon.png the favicon that will be used. The SVG version is used by newer browsers.

模板中当前上下文对象提供的数据：

- `<html lang="{{ language }}">` 语言，默认值为 en。
- `title` 标题，等价 `{{ chapter_title }} - {{ book_title }}`。
- `book_title` Title of the book, as specified in book.toml
- `chapter_title` Title of the current chapter, as listed in SUMMARY.md
- `path` Relative path to the original markdown file from the source directory
- `content` This is the rendered markdown.
- `path_to_root` 当前文件到项目根目录的相对路径。
- `chapters` 一个字典数据数组，{{chapters.[0].name}} 访问数据，{"section": "...", "name": "...", "path": "dir/markdown.md"}
- `{{#toc}}{{/toc}}` 通过 toc 暴露目录。
- 通过 previous 和 next helpers 暴露上下章节链接 link 和 name。

SUMMARY.md 文件用来告诉 mdBook 命令需要包含使用章节内容文件，它本身就相当于页面上的目录。

它有固定的目录链接结构：

- `# Title` 即 markdown 一级标题 # 定义，这部分不会出现在生成页面中，只是让你看起来更有条理。
- `# Part Title` 分卷标题，可选，即在正式章节中出现的一级标题，会在目录中显示，但没有超级链接功能。
- Prefix Chapter 正式内容章节开始前的部分，如 forewords, preface, introductions 等，不能嵌套，并且只能在数字编号章节内容之前。
- Numbered Chapter 正式章节，使用数字编号，可多级嵌套，可以使用 `-` 或 `*` 表示一个数字编号。
- Suffix Chapter 附录内容，在正式章节后面。
- `---` Separators 可选的分隔符号。
- `[Draft chapters]()` 草稿章节，注意空圆括号表示这个条目没有内容，即草稿状态，在页面显示，但没有链接功能。

SUMMARY.md 内容参考：

    # Title

    [Title of the Chapter](relative/path/to/forewords.md)
    [Title of another Chapter](relative/path/to/preface.md)

    # Getting started

    - [Getting Started](getting-started.md)
        - [Installation](installation.md)
        - [Hello, World!](hello-world.md)
        - [Hello, Cargo!](hello-cargo.md)

    - [Programming a Guessing Game](guessing-game-tutorial.md)

    # Basic Concepts

    - [Common Programming Concepts](common-programming-concepts.md)
        - [Variables and Mutability](variables-and-mutability.md)
        - [Data Types](data-types.md)
        - [Functions](how-functions-work.md)
        - [Comments](comments.md)
        - [Control Flow](control-flow.md)

    - [Understanding Ownership](understanding-ownership.md)
        - [What is Ownership?](what-is-ownership.md)
        - [References and Borrowing](references-and-borrowing.md)
        - [The Slice Type](slices.md)

    - [Using Structs to Structure Related Data](structs.md)
        - [Defining and Instantiating Structs](defining-structs.md)
        - [An Example Program Using Structs](example-structs.md)
        - [Method Syntax](method-syntax.md)

    - [Enums and Pattern Matching](enums.md)
        - [Defining an Enum](defining-an-enum.md)
        - [The `match` Control Flow Operator](match.md)
        - [Concise Control Flow with `if let`](if-let.md)

    ## Separators
    ---

    ## Draft chapters are chapters without a file and thus content
    - [Draft chapter]()

    ## Appendix (appendix-00.md)

    [A - Keywords](appendix-01-keywords.md)
    [B - Operators and Symbols](appendix-02-operators.md)
    [C - Derivable Traits](appendix-03-derivable-traits.md)
    [D - Useful Development Tools](appendix-04-useful-development-tools.md)
    [E - Editions](appendix-05-editions.md)
    [F - Translations of the Book](appendix-06-translation.md)
    [G - How Rust is Made and “Nightly Rust”](appendix-07-nightly-rust.md)

参考配置 book.toml：

    [book]
    title = "The Rust Programming Language"
    author = "Steve Klabnik and Carol Nichols, with Contributions from the Rust Community"
    description = "The example book covers examples."
    src = "src"
    language = "en"

    [output.html]
    additional-css = ["ferris.css", "theme/2018-edition.css"]
    additional-js = ["ferris.js"]
    git-repository-url = "https://github.com/rust-lang/book"
    theme = "my-theme"
    default-theme = "light"
    preferred-dark-theme = "navy"
    mathjax-support = true

    [output.linkcheck]  # enable the "mdbook-linkcheck" renderer

    [build]
    build-dir = "book"
    create-missing = false

    # plugins
    [preprocessor.katex]

其中，[output.html] 提供的配置项目还有很多，具体参考文档。

可以在 markdown 文件中包含代码文件内容，ANCHOR: here 是可选分隔标记，标记可以嵌套：

    ```rust,noplayground
    {{#rustdoc_include ../listings/ch17-oop/listing-17-02/src/lib.rs:here}}
    {{#include ../listings/ch17-oop/listing-17-02/src/lib.rs}}
    ```

另外还可以使用行号，需要显示哪些行就指定，而 rustdoc_include 方式指定的行号是以折叠方式显示的：

    ```rust,noplayground
    {{#rustdoc_include ../listings/ch17-oop/listing-17-02/src/lib.rs:1}}
    {{#include ../listings/ch17-oop/listing-17-02/src/lib.rs:1}}
    // ...
    {{#include ../listings/ch17-oop/listing-17-02/src/lib.rs:5}}
    ```

利用 play.rust-lang.org 提供的在线编译能力，可以在页面配置 playground 以获得在页面中执行代码的功能。

或者直接在页面中嵌入代码也一样，设置 ignore 不提供运行功能：

    ```rust
    fn main() {
        println!("Hello, world!");
    }
    ```

    {{#playground file.rs}}

    ```rust,ignore
        println!("Hello, world!");
    ```

配置可执行代码为可编辑状态，默认使用 Ace editor，可以通过 editor 指定：

    [output.html.playground]
    editable = true
    editor = "/path/to/editor"

然后在代码块中设置 editable：

    ```rust,editable
    fn main() {
        let number = 5;
        print!("{}", number);
    }
    ```

参考代码文件：

```rust,ignore
    pub struct AveragedCollection {
        list: Vec<i32>,
        average: f64,
    }

    // ANCHOR: here
    fn main() {
        println!("Hello, world!");
    }
    // ANCHOR_END: here
```

mdBook 内置了 LaTeXT，只需要配置 mathjax-support 就可以打开数学公式支持：

    [output.html]
    mathjax-support = true

Inline equations `\\(` and `\\)`：

    \\( \int x dx = \frac{x^2}{2} + C \\)

Block equations `\\[` and `\\]`：

    \\[ \mu = \frac{1}{N} \sum_{i=0} x_i \\]





## ⚡ Basic Concepts & Data Types
- https://doc.rust-lang.org/book/ch03-00-common-programming-concepts.html
- Lexical structure https://doc.rust-lang.org/stable/reference/lexical-structure.html
- Rust Language Cheat Sheet https://cheats.rs

基础概念部分解析以下内容：

- Variables and Mutability 变量与可变性
- Data Types 基本数据类型
- Functions 函数
- Comments 注解
- Control Flow 流程控制


### 🟢🔵 Comments & Doc
- Documentation https://cheats.rs/#documentation
- Making Useful Documentation Comments https://doc.rust-lang.org/book/ch14-02-publishing-to-crates-io.html
- https://doc.rust-lang.org/stable/rust-by-example/meta/doc.html
- https://doc.rust-lang.org/stable/reference/comments.html


Rust 使用 C++ 一样的注解语法，单句注解和块注解两种：

```rust,ignore
/**
 * Some comments...
 */
fn main() {
    let lucky_number = 7; // I’m feeling lucky today
}
```

可以使用 /// 来设置注解文档，结合 cargo doc 命令生成文档：

```rust,ignore
/// Adds one to the number given.
///
/// # Examples
///
/// ```
/// let arg = 5;
/// let answer = my_crate::add_one(arg);
///
/// assert_eq!(6, answer);
/// ```
pub fn add_one(x: i32) -> i32 {
    x + 1
}
```

除了支持 Markdowm 的语法，以上设置了一条标题 `# Examples`，还有以下几个分区功能：

- `Panics`: 预测调用函数会引起 panic，调用者应该确认程序不该调用如果不想程序 panic。
- `Errors`: 描述函数的返回的错误信息，以及可能导致这些错误返回的条件，这样对调用方很有帮助。
- `Safety`: 如果函数调用不安全，那么应该解释为什么函数不安全，并涵盖函数期望调用者支持的不变量。

Rust 中的 Outer comment 即是在 cargo doc 编译后会出现在文档中的注解，Inner doc comments 则是不需要被提取到文档的注解，包括 `///`、 `//!` 和 `/**` 几种形式。

```rust,ignore
#![allow(unused)]
//! A doc comment that applies to the implicit anonymous module of this crate

pub mod outer_module {

    //!  - Inner line doc
    //!! - Still an inner line doc (but with a bang at the beginning)

    /*!  - Inner block doc */
    /*!! - Still an inner block doc (but with a bang at the beginning) */

    //   - Only a comment
    ///  - Outer line doc (exactly 3 slashes)
    //// - Only a comment

    /*   - Only a comment */
    /**  - Outer block doc (exactly) 2 asterisks */
    /*** - Only a comment */

    pub mod inner_module {}

    pub mod nested_comments {
        /* In Rust /* we can /* nest comments */ */ */

        // All three types of block comments can contain or be nested inside
        // any other type:

        /*   /* */  /** */  /*! */  */
        /*!  /* */  /** */  /*! */  */
        /**  /* */  /** */  /*! */  */
        pub mod dummy_item {}
    }

    pub mod degenerate_cases {
        // empty inner line doc
        //!

        // empty inner block doc
        /*!*/

        // empty line comment
        //

        // empty outer line doc
        ///

        // empty block comment
        /**/

        pub mod dummy_item {}

        // empty 2-asterisk block isn't a doc block, it is a block comment
        /***/

    }

    /* The next one isn't allowed because outer doc comments
       require an item that will receive the doc */

    /// Where is my item?
}
```

Within Doc Comments Explanation

    ```...```       Include a doc test (doc code running on cargo test).
    ```X,Y ...```   Same, and include optional configurations; with X, Y being ...
        rust        Make it explicit test is written in Rust; implied by Rust tooling.
        -           Compile test. Run test. Fail if panic. Default behavior.
        should_panic    Compile test. Run test. Execution should panic. If not, fail test.
        no_run          Compile test. Fail test if code can't be compiled, Don't run test.
        compile_fail    Compile test but fail test if code can be compiled.
        ignore          Do not compile. Do not run. Prefer option above instead.
        edition2018     Execute code as Rust '18; default is '15.
    #               Hide line from documentation (``` # use x::hidden; ```).
    [`S`]           Create a link to struct, enum, trait, function, … S.
    [`S`](crate::S) Paths can also be used, in the form of markdown links.


### 🟢🔵 Variables and Mutability 变量与可变性
- https://doc.rust-lang.org/book/ch03-01-variables-and-mutability.html
- https://doc.rust-lang.org/std/keyword.const.html

前面已经解析过 Variables and Mutability 概念，它们都是变量，而常量使用 const 定义。

```rust,ignore
fn main() {
    let foo = "x"; // immutable
    let foo = "y"; // override or shadowing
    // cannot assign twice to immutable variable `foo`
    // foo = "y";

    let bar;       // mutable
    bar = foo;

    println!("foo: {}", foo);
    
    const C: u32 = 100_000;
    const MAX_POINTS: u32 = 100_000;
    const HELLO: &str = "Hello, world!";
    static WORLD: &str = "Hello, world!";
    // let c: String = "it is a constant".to_owned();

    println!("foo: {} bar: {}, constant: {}", foo, bar, C);
}
```

注意，以上代码的 foo 变量赋值到 bar 时，是传递方式，没有发生所有权转移，不像 String 对象。

在 Rust 中，变量默认是不可变的，除非加了 `mut` 关键字使变量具有可变性，但是它们都属于变量。

在变量名前使用 mut 来使一个变量可变，即 `mutable`，在 Rust 中，变量默认是不可变的 `immutable`。

Rust 用 `let` 语句来创建变量，并绑定到等号右侧的值上，注意绑定这个动作，参考生命周期部分内容。

变量可以被覆盖，即 shadowing，它不同于将变量设为可变变量。如果不使用 `let` 为变量重新赋值，会得到编译错误，但是使用 `let` 为同一变量重新赋值可以覆盖之前的变量，覆盖特性让变量可以改变。

覆盖的好处是可以让我们避免于起不同的变量名，可以直接复用之前的变量名，同时不必关心变量类型的更改，也更高效和便于理解。


Rust 的常量定义使用关键字 `const`，并且需要指定数据类型。常量可以在任何范围内定义，并且可以在多个代码块中使用，给常量赋值时当然要使用常量表达式，不能使用函数的返回值或者是计算式。

Rust 常量命名规范是：全字母大写，单词间以下划线分隔，数字类型为了方便阅读也可以使用下划线分割。

为整个程序中使用的值设为常量，有利于传递该值的含义给未来的代码维护人员。使用常量便于修改，只需修改一个常量，便可更新程序中所有使用该常量的值。

变量与常量的异同比较：

- 相同点：都不可变
- 不同点：
    - 常量不是默认不可变，而是一直不会改变。
    - 变量使用 `let` 声明，常量使用 `const` 声明，且必须指定常量的类型。
    - 常量可以在任意作用域里声明。
    - 常量只能设置为常量表达式，而不能设置为函数调用的结果或只能在运行时计算的任何其他值。


### 🟢🔵 Data Types 基本数据类型
- https://doc.rust-lang.org/book/ch03-02-data-types.html
- https://doc.rust-lang.org/stable/reference/types.html
- https://doc.rust-lang.org/stable/reference/types/tuple.html
- https://doc.rust-lang.org/stable/reference/types/array.html
- https://doc.rust-lang.org/rust-by-example/types.html
- https://doc.rust-lang.org/std/iter/trait.IntoIterator.html#impl-IntoIterator-23
- https://doc.rust-lang.org/stable/std/primitive.unit.html
- [Rust Language Cheat Sheet](https://cheats.rs/#strings-chars)
- [Tokens](https://doc.rust-lang.org/stable/reference/tokens.html)

Rust 程序每个变量、项和值都有一个类型，类型定义了保存该值的内存如何解释，以及可以对该值执行什么操作。

以下是文档给出的类型列表：

-  types:
    - `Boolean` — `true` or `false`
    - `Numeric` — integer and float
    - `Textual` — `char` and `str`
    - `Never` — `!` — a type with no values
- Sequence types:
    - `Tuple`
    - `Array`
    - `Slice`
- User-defined types:
    - `Struct`
    - `Enum`
    - `Union`
- Function types:
    - `Functions`
    - `Closures`
- Pointer types:
    - `References`
    - `Raw pointers`
    - `Function pointers`
- Trait types:
    - `Trait objects`
    - `Impl trait`


任何语言都有基本数据类型和复合数据类型，Rust 也不例外：

- `bool` 布尔值，true or false。
- `[u/i][8/16/32/64/128]` 无符号、符号整数。
- `usize` `isize` 大小取决于程序运行时机器的字长的整型，有可能为 4 字节或 8 字节。
- `f[32/64]` 浮点数，默认的浮点类型是 `f64`，它们遵循 IEEE-754 规范。
- `char` 字符，Rust 系统使用 Unicode，所以一个字符占 4 字节，通过 `std::mem::size_of::<char>()` 确认。
- `str` 字符串是一种切片类型，切片类型在编译期间必须是引用类型，可确定大小的。

每种整型只能装下固定大小的数字，超出了整型的范围则会发生溢出，编译期 Rust 抛出一个错误指示数据溢出。


Rust 支持有符号整数和无符号整数：

    |  Length | Signed | Unsigned |
    |---------|--------|----------|
    | 8-bit   | i8     | u8       |
    | 16-bit  | i16    | u16      |
    | 32-bit  | i32    | u32      |
    | 64-bit  | i64    | u64      |
    | 128-bit | i128   | u128     |
    | arch    | isize  | usize    |

如果没有指定数据类型，Rust 默认使用 i32，这个类型通常是性能最好的。


Rust 系统中将单一的值称为 Scalar Types 或原始类型，如 integers, floating-point numbers,
Booleans, characters 等基础数据类型。

比较一下基本数据类型的与 C++ 语法差异：

C++

    bool boolean = true;
    std::uint8_t u8 = 0;
    std::int16_t i16 = 0;
    std::size_t size = 0;
    float real = 0;
    double precise_real = 0;
    char character = 'A';
    const char* c_string = "Hello, world";
    std::string string = "Hello, world";

Rust

    let boolean: bool = true;
    let uint8: u8 = 0;
    let int16: i16 = 0;
    let size: usize = 0;
    let real: f32 = 0;
    let precise_real: f64 = 0;
    let character: char = '😻';
    let str_ref: &str = "Hello, world";
    let string: String = "Hello, world".to_owned();

    // Suffixed literals
    let mut _mutable_integer = 7i32;

    // `NanoSecond` is a new name for `u64`.
    type NanoSecond = u64;

    // Use an attribute to silence warning.
    #[allow(non_camel_case_types)]
    type u64_t = u64;

Rust 简化了类型名字表达，并且使用类似 TypeScript 一样的类型声明语法格式，在冒号后面定数据类型。

Numbers 的几种表示：

    | Number literals* |   Example   |
    |------------------|-------------|
    | Decimal integer  | 98_222      |
    | Hex integer      | 0xff        |
    | Octal integer    | 0o77        |
    | Binary integer   | 0b1111_0000 |
    | Byte(u8)         | b’A’        |
    | Floating-point   | 123.0E+77   |

十进制中 _ 一般被当作千分符。

单位类型是比较特殊的，表示为 `()` 类型，也仅有一个值 `()`，用来表示没有其它有意义的返回值。通常是
函数的隐式返回值，即没有指定返回值 `-> ...` 的函数会自动返回的值。

参考如下：

```rust,ignore
fn return_unit_long() -> () {}
fn return_unit_short() {}

fn returns_i64() -> i64 {
    1i64
}
fn returns_unit() {
    1i64;
}

let is_i64 = {
    returns_i64()
};
let is_unit = {
    returns_i64();
};
```

Rust 有两种原始复合类型，Tuples 和 Array：

```rust,ignore
fn main() {
    // let a = [3; 5];
    // let a = [3, 3, 3, 3, 3];
    // let a: [i32; 5] = [1, 2, 3, 4, 5 ];
    let months = [
        "January", "February", "March", // Spring
        "April", "May", "June",         // Summer
        "July", "August", "September",  // Fall & Winter
        "October", "November", "December"];

    let x: (i32, f64, u8) = (500, 6.4, 1);

    let five_hundred = x.0;
    let six_point_four = x.1;
    let one = x.2;

    println!("a is: {:?} {:?}", months, (five_hundred, six_point_four, one));
}
```

数组使用 `[T; _]` 或 `[T]` 定义，下划线可以指定一个长度，其中数组表达 `[Value; len]` 是通过
宏定义实现一个定长数组，必须在声明时指定类型和大小。

数组的引用可以直接 for 枚举，这种方式长度限制为 std::array::LengthAtMost32 ，因为 `&[T; N]`
类型默认实现的 IntoIterator 只提供了这个长度的实现，使用 `iter()` 方法获取数组对象上的迭代器
进行枚举则不受数组长度限制。

```rust,ignore
let arr = [1; 33];
// println!("LengthAtMost32: {:?}", arr);
// for i in &arr {
//     print!("{}", i);
// }
for (index, value) in arr.iter().enumerate() {
    print!("{}-{}", index, value);
}
```

查看迭代器文档其中两条实现：

    impl<'a, T, const N: usize> IntoIterator for &'a [T; N]
    impl<'a, T, const N: usize> IntoIterator for &'a mut [T; N]


数组可以通过下标访问元素，过界访问不能在编译期检查出来，但运行时会出错 `index out of bounds`。

Rust 的类型系统是复杂的，除了这些基本类型，还有其它高级类型，参考 Advanced Features。即使一些
根本无返回值的情况，比如线程崩溃、break 或 continue 等行为，也纳入类型系统，叫做 never 类型。 


Rust 没有运行时的 GC 行为，内存首先由编译器来分配，Rust 代码被编译为 LLVM IR，其中携带来内存
分配的信息。编译其需要事先直到类型的大小，才能分配合理的内存，

Rust 中绝大部分类型都是在编译期可确定大小的类型，如原生类型整数类型 u32 固定是 4 个字节，可以在
编译期确定大小的类型。

Rust 中也有 DST - Dynamic Sized type 比如，字符串字面量类型 str，注意不是 &str。编译器不能
事先知道程序中会出现什么样的字符串，所以对于编译器来说，str 类型的大小是无法确定的，也无法进行更改，
就像常量一样。isize 和 usize 也是根据程序运行平台差异大小不同，与编译期运行的机器无关。



### 🟢🔵 Type Conversions 类型转换
- https://doc.rust-lang.org/rust-by-example/conversion/try_from_try_into.html
- https://doc.rust-lang.org/rust-by-example/conversion/string.html
- The Rustonomicon - Type Conversions https://doc.rust-lang.org/nightly/nomicon/conversions.html

Primitives Casting

```rust,ignore
let decimal = 65.4321_f32;

// Error! No implicit conversion
// let integer: u8 = decimal;

// Explicit conversion
let integer = decimal as u8;
let character = integer as char;

// Error! There are limitations in conversion rules. A float cannot be directly converted to a char.
// let character = decimal as char;

// 1000 already fits in a u16
println!("1000 as a u16 is: {}", 1000 as u16);

// literal out of range for `u8`
// println!("1000 as a u8 is : {}", 1000 as u8);

// -1 + 256 = 255
println!("  -1 as a u8 is : {}", (-1i8) as u8);

// Unless it already fits, of course.
println!(" 128 as a i16 is: {}", 128 as i16);

// Since Rust 1.45, the `as` keyword performs a *saturating cast* when casting from float to int.  
// If the floating point value exceeds the upper bound or is less than the lower bound, the returned value will be equal to the bound crossed.

// 300.0 is 255
println!("300.0 is {}", 300.0_f32 as u8);
// -100.0 as u8 is 0
println!("-100.0 as u8 is {}", -100.0_f32 as u8);
// nan as u8 is 0
println!("nan as u8 is {}", f32::NAN as u8);

// This behavior incures a small runtime cost and can be avoided with unsafe methods, however the results might overflow and return **unsound values**. Use these methods wisely:
unsafe {
    // 300.0 is 44
    println!("300.0 is {}", 300.0_f32.to_int_unchecked::<u8>());
    // -100.0 as u8 is 156
    println!("-100.0 as u8 is {}", (-100.0_f32).to_int_unchecked::<u8>());
    // nan as u8 is 0
    println!("nan as u8 is {}", f32::NAN.to_int_unchecked::<u8>());
}
```

所有原始数据类型都实现了 `to_string` 方法，这是通过 Blanket Implementations 实现 ToString 提供的方法：

```rust,ignore
#[stable(feature = "rust1", since = "1.0.0")]
impl<T: fmt::Display + ?Sized> ToString for T {
    // A common guideline is to not inline generic functions. However,
    // removing `#[inline]` from this method causes non-negligible regressions.
    // See <https://github.com/rust-lang/rust/pull/74852>, the last attempt
    // to try to remove it.
    #[inline]
    default fn to_string(&self) -> String {
        use fmt::Write;
        let mut buf = String::new();
        buf.write_fmt(format_args!("{}", self))
            .expect("a Display implementation returned an error unexpectedly");
        buf
    }
}
```

从字符转换数值，使用 FromStr Trait 提供的 `from_str(src: &str)` 方法，支持字符串格式：

- '3.14'
- '-3.14'
- '2.5E10', or equivalently, '2.5e10'
- '2.5E-10'
- '5.'
- '.5', or, equivalently, '0.5'
- 'inf', '-inf', 'NaN'

```rust,ignore
use std::str::FromStr;

let s = "5";
let x = i32::from_str(s).unwrap();

assert_eq!(5, x);
```

从 str 解析数值：

```rust,ignore
let four: u32 = "4".parse().unwrap();
assert_eq!(4, four);

// Using the 'turbofish' instead of annotating four:
let four = "4".parse::<u32>();
assert_eq!(Ok(4), four);

let nope = "j".parse::<u32>();
assert!(nope.is_err());
```

Conversion between `str` and  `String`

```rust,ignore
let s = String::from("foo");
assert_eq!("foo", s.as_str());

let my_str = "bar";
let my_string = String::from(my_str);
```

通过 Trait 扩展，很容易实现自定义类型的转换，只需要实现 `std::convert::From`: 

```rust,ignore
use std::convert::From;

#[derive(Debug)]
struct Number {
    value: i32,
}

impl From<i32> for Number {
    fn from(item: i32) -> Self {
        Number { value: item }
    }
}

fn main() {
    let num = Number::from(30);
    println!("My number is {:?}", num);
}
```

实现转换接口  `std::convert`：

```rust,ignore
pub trait Into<T> {
    pub fn into(self) -> T;
}
pub trait From<T> {
    pub fn from(T) -> Self;
}
```

示范 Number 类型的转换方法实现：

```rust,ignore
use std::convert::From;

#[derive(Debug)]
struct Number {
    value: i32,
}

impl Into<i32> for Number {
    fn into(self) -> i32 {
        self.value
    }
}
impl From<i32> for Number {
    fn from(value: i32) -> Self {
        Number { value }
    }
}
// impl Into<Number> for i32 {
//     fn into(self) -> Number {
//         Number{value:self}
//     }
// }

fn main() {
    let int = 5;
    // Try removing the type declaration
    let num: Number = int.into(); // exec Form<i32> for Number
    let val: i32 = num.into();    // exec Into<i32> for Number
    let num= Number::from(int);   // exec Form<i32> for Number
    
    // no conversion
    let num= Number::from(Number{value:int});
}
```

它们互为逆转换，尽量避免去实现 Into 而是实现 From，因为实现 From 就自动一揽子实现 Into，这得益于标准库的 blanket implementation。

在泛型函数上绑定时，更适合使用 Into 而不是 From，只要确保实现 Into 的类型就可以使用。

示范代码调用 i32.into() 方法执行转换，这里为 Number 类型实现了 `From<i32>` 转换接口，所以会执行 from() 方法将 i32 转换为 Number 类型。

类似的类型转换扩展方法：

- std::convert::TryFrom try_from();
- std::convert::TryInto try_into();

TryInto 和 TryForm 的差别在于它们可以允许转换失败，而 From 和 Into 不允许。




### 🟢🔵 Control Flow 流程控制
- https://doc.rust-lang.org/book/ch03-05-control-flow.html
- https://doc.rust-lang.org/stable/reference/expressions/if-expr.html
- https://doc.rust-lang.org/stable/reference/expressions/loop-expr.html
- https://doc.rust-lang.org/reference/expressions/if-expr.html
- Range Expressions https://doc.rust-lang.org/stable/reference/expressions/range-expr.html
- Rust by Example - Flow of Control https://doc.rust-lang.org/stable/rust-by-example/flow_control.html

Rust 的流程控制包括：

- if 条件控制，包括 if let；
- loop 循环；
- while 循环，包括 while let；
- for 循环，包括 for range；
- match 模式匹配；

经典 if-else 语法，注意条件部分不使用括号：

```rust,ignore
fn main() {
    let number = 6;

    if number % 4 == 0 {
        println!("number is divisible by 4");
    } else if number % 3 == 0 {
        println!("number is divisible by 3");
    } else if number % 2 == 0 {
        println!("number is divisible by 2");
    } else {
        println!("number is not divisible by 4, 3, or 2");
    }
}
```

使用 if let 语法的条件中可以使用赋值语法：

```rust,ignore
let mut count = 0;
if let state = coin {
    println!("State quarter from {:?}!", state);
} else {
    count += 1;
}
```

除了经典 if-else 语法，还可以像三元运算符一样使用 if 语句：

```rust,ignore
fn main() {
    let number = 0;
    let number = if number>0 { 5 } else { 6 };
    println!("The value of number is: {}", number);
}
```

这种 if 语法实现条件模式匹配赋值，语句块可以返回值是 Lisp 语言首先引入的特性：

```rust,ignore
let (status_line, filename) = if buffer.starts_with(get) {
    ("HTTP/1.1 200 OK\r\n\r\n", "hello.html")
} else {
    ("HTTP/1.1 404 NOT FOUND\r\n\r\n", "404.html")
};
```

注意，Rust 不对条件部分进行类型转换，因此表达中需要一个 bool 值作为判断条件，使用其它值是一种错误。

Rust 的数组对象是可迭代的，只需要通过 `itor()` 方法获取相应的迭代器即可：

```rust,ignore
fn main() {
    let a = [10, 20, 30, 40, 50];

    for element in a.iter() {
        println!("the value is: {}", element);
    }
}
```

Rust 支持 Range 语法，对应模块 std::ops::Range：

    let s = String::from("hello world");
    let hello = &s[0..5];   // std::ops::Range<{integer}>
    let world = &s[6..=10]; // std::ops::RangeInclusive<{integer}>
    let slice = &s[..2];    // std::ops::RangeTo<{integer}>
    let slice = &s[3..];    // std::ops::RangeFrom<{integer}>

可以使用以下方式生成数组，`rev()` 函数反转迭代顺序：

```rust,ignore
fn main() {
    for number in (1..4).rev() {
        println!("{}!", number);
    }
    println!("LIFTOFF!!!");
}
```

Range 的格式是 `a..[b]`，上面例子加括号是因为要使用迭代器的反转方法，b 是可以省略的。

```rust,ignore
fn main() {
    for element in 1.. {
        println!("the value is: {}",  element);
    }
}

使用 loop 循环，可以通过 `break` 语句返回一个值，并作为语句表达式赋值给变量：

```rust,ignore
fn main() {
    loop {
        println!("loop once!");
        break;
    }
            
    let mut counter = 0;

    let result = loop {
        counter += 1;

        if counter == 10 {
            break counter * 2;
        }
    };

    println!("The result is {}", result);
}
```

使用 while 条件循环：

```rust,ignore
fn main() {
    let mut number = 3;
    while number != 0 {
        println!("{}!", number);
        number -= 1;
    }
    println!("LIFTOFF!!!");
}
```



## ⚡ Features 特色概念
- crate tree https://zhuanlan.zhihu.com/p/105181947
- Introducing MIR https://blog.rust-lang.org/2016/04/19/MIR.html
- 「可视化」Rust语言编译器十年变迁 https://www.bilibili.com/video/av43956267/

Rust internal compiler pipeline：

- Rust Sources
    - Parsing & Desugaring
- HIR - High-level intermediate representation
    - Type checking
- MIR - Middle-level intermediate representation
    - Borrow checking
    - Optimization
- LLVM IR - Low-level Machine intermediate representation
    - Optimization
- Machine Code

Rust 是一门编译型语言，在 Rust 的世界里，独立完成编译的最小单元叫做 crate，它是 cargo 管理的最小结构，也是 rustc 管理的最大的结构。

比 crate 大的结构依次是 package 和 workspace，这些是 cargo 处理的。

Rustc 命令每次执行从一个 crate 的最外层的源文件生成目标文件，crate 由至少一个源文件组成，通常源文件扩展名为 rs。

crate 按树状结构管理，树上的节点称为 item，类型有多种。编译器读懂你提供的这棵树，然后把它生成 crate 类型所指定的格式的目标文件。最常用的是 rlib 和 bin 两种，分别是可重用的 Rust 静态库文件和可执行程序。

第一类条目就是模块条目，它是它是用来组织其他条目的，类似文件夹层级。一种写法是内容直接写在花括号内。另一种写法是由它根据一套规则指向磁盘上的另一个文件，作为它的内容。

第二类条目用来定义一些用户定义类型：主要有结构体定义、枚举体定义、联合体定义这几种。结构体、枚举体、联合体是Rust里的三种用户定义类型。要注意，由于Rust里对泛型的广泛使用（三句不离泛型），结构体定义、枚举体定义、联合体定义这些定义出来的类型在非泛型的情况下是一个具体类型，比如String，在泛型的情况下则是一族具体类型，类似Vec<T>这样，其中T是泛型参数，代入不同的泛型参数的“取值”就会得到不同的具体类型。不管是哪种，整个定义都是一个条目，是一个整体。

第三类条目也有定义类型的效果，但是定义出来的就不算是用户定义类型了。首先是类型别名定义条目，它定义一个类型别名（也支持泛型）指向其他具体类型。另外就是函数定义条目（依然支持泛型），它会自动产生一个独特的函数条目内置类型，在表达式中写这个函数的名称就可以拿到这个类型的值。

第四类条目会声明作用域为全局的值，与函数定义条目有些类似之处。首先是常数定义条目，指定名称、类型和一个常数表达式后，你就可以在表达式中用这个名称引用这个值了。然后是静态定义条目，它与常数定义条目的区别是它的值具有一个全局的存储位置，从而能够表达状态变化，可以类比其他语言中的全局变量。

第五类条目与特质(trait)系统相关。特质条目用来定义一个特质，特质不是类型，是一种可以与类型建立联系的抽象接口，抽象接口含有关联条目，目前共三种，关联常数条目就类似常数定义条目，关联类型别名条目就类似类型别名定义条目，关联方法条目有点像函数定义条目，但稍微有点区别。

第六类条目称为实现条目。实现分为固有实现和特质实现两种。实现条目写起来的格式很特别，有点像某些查询语言，基本上是“对于满足某某条件的某某类型(和某某特质)，提供如下的关联条目定义”的结构。这个比较复杂，后面我们会详细讲。

第七类条目用来实现导入功能。导入有三种，一种是导入其他的盒(crate)到全局空间中，称为外部盒(extern crate)条目。一种是建立一个“链接”，称为引用声明条目，类似磁盘上的符号链接或者快捷文件，形成“它虽然其实定义不是在这的，但是仿佛就在这里”的效果。这个效果在rust里很重要，后面还会反复说到。另一种是外部定义块条目，它用来包含其他语言（目前是C语言）在外部提供的定义，目前有两种，外部静态条目就类似静态条目，外部函数条目就类似函数定义条目。


### 🟢🔵 Zero-cost Abstraction 零成本抽象
- Diesel - Safe, Extensible ORM https://diesel.rs
- Zero-cost abstractions in Rust https://carette.xyz/posts/zero_cost_abstraction/
- Rust中的零成本抽象（一） https://zhuanlan.zhihu.com/p/109517672
- Rust中的零成本抽象（二） https://zhuanlan.zhihu.com/p/109189186

当你编程的时候，项目越来越复杂，通常你会增加抽象来让项目容易维护并增加功能。

作为开发者，你肯定希望你的抽象不要在运行时增加成本，所以，有两个原则是：

- 项目的可读性和易管理性比复杂的手写优化更重要；
- 但至少能在运行时发挥非常良好的性能；

确实，改进代码可读性会限制优化和内存开销，并间接迟滞运行时的性能。

零成本抽象来自 C++，由其创始人 Bjarne Stroustrup 定义，即 C++ 的实现遵循零开销原则：你不使用的，你不负担成本。更进一步：你使用的，你也没法更优化。

总结他说的：

- 你不使用的功能，你不承担额外开销；
- 高层的抽象会被编译成机器代码，这些代码很难更进一步优化；

Rust 最主要的抽象（或者说标准库）不会增加运行时成本，这是 Rust 零成本抽象核心原则，尤其对下面的这些特性：

- 编译时内存检查，基于 borrowing and ownership 实现静态垃圾回收机制。Rust 不在运行时通过引用计数检查的方式回收内存，而是在编译时追踪检查生命周期，这使得程序运行非常高效。
- Ownership and borrowing
- traits 是非常让人印象深刻的功能，用来拓展你的类型。
- generics 泛型
- Iterator and closure APIs
- Async/await and Futures
- Unsafe and the module boundary
- 还有其它

零成本抽象很好地解释了 Diesel 这个闻名的 Rust ORM 框架性能要比 raw postgress 快 30%。

用两个例子来解释 Rust 中的零成本抽象，求所有小于 n 的奇数自然数和。

两个版本的代码，第一个是通常的抽象版本，第二个是手写优化版本：

```rust,ignore
fn sum_odd_numbers(n: u64) -> u64 {
    let mut acc = 0;
    for element in 0.. {
        if element >= n {
            break;
        }
        if element.is_odd() {
            acc += element;
        }
    }
    acc
}

fn sum_odd_numbers(n: u64) -> u64 {
    (0..)
        .take_while(|element| element < &n)
        .filter(|n| n.is_odd())
        .fold(0, |sum, element| sum + element)
}
```

下面一段解释了第二个函数式编程，它似乎更容易读懂，分解它可能作出错误的假定：

- 创建由 0 开始的迭代器；
- 取出所有小于 n 的元素，如果显式给出 n 值，编译器可以在编译期给出最终的数字，并保存在可执行文件中；
- 循环所有元素，取出奇数，存放到另一个数组中；
- 循环所有元素，计算奇数的总和，返回最终值；
- 结果是，为了求和计算，分配了好几个数组。

好在 Rust 不会这样做，编译器会像第一个版本那样做。

下表是在 Intel Core i5 (3 GHz, 6 cores * 2 threads / core) 的跑分结果，显示了 10 次不同 n 值执行时间的中值：

Benchmarks

    | Version |     n      | Hand-optimized execution time | Abstracted version execution time |
    |---------|------------|-------------------------------|-----------------------------------|
    | Debug   | 100        | 0,02s                         | 0,01s                             |
    | Debug   | 100000     | 0,02s                         | 0,03s                             |
    | Debug   | 100000000  | 2,97s                         | 6,59s (x2.22)                     |
    | Debug   | 1000000000 | 29,61s                        | 65,16s (x2.20)                    |
    | ———     | ————       | ——–                           | ——–                               |
    | Release | 100        | 0,00s                         | 0,00s                             |
    | Release | 100000     | 0,00s                         | 0,00s                             |
    | Release | 100000000  | 0,03s                         | 0,03s                             |
    | Release | 1000000000 | 0,26s                         | 0,26s                             |

Compile time consequences

    | Version | Hand-written optimized |   Abstracted  |
    |---------|------------------------|---------------|
    | Debug   | 0,01s                  | 0,01s         |
    | ———     | ————————               | ————          |
    | Release | 5,80s                  | 8,19s (x1.41) |

通过数据可以得出结论，结过 release 优化配置编译的最终程序运行是无差别的，只是在编译程序时，抽象版本花销更多的优化时间，即使是如此简单的程序。

然而，当你需要抽象的时候，不要犹豫。在 Rust 中你永远不需要先进行手写优化，而应该考虑抽象性、架构和设计、代码可读性，即使你十分在意运行时性能。



### 🟢🔵 Ownership 所有权
- 引用的生命周期 https://www.bilibili.com/video/BV1hp4y1k7SV?p=49
- Understanding Ownership https://doc.rust-lang.org/book/ch04-00-understanding-ownership.html
- Guide to Rustc Development 44. The borrow checker https://rustc-dev-guide.rust-lang.org/borrow_check.html
- The Rustonomicon - The Dark Arts of Unsafe Rust https://doc.rust-lang.org/nomicon/meet-safe-and-unsafe.html
- https://doc.rust-lang.org/book/ch19-01-unsafe-rust.html
- https://doc.rust-lang.org/stable/alloc/boxed/struct.Box.html
- https://doc.rust-lang.org/stable/std/boxed/struct.Box.html
- Smart Pointers https://doc.rust-lang.org/book/ch15-00-smart-pointers.html
- https://doc.rust-lang.org/nomicon/ownership.html

所有权是 Rust 最独特的特性，它实现了不需要垃圾收集器的情况下保证内存安全。因此，了解所有权在 Rust 中的作用是很重要的。

语法上，Rust 参考了 C++，但不不像 Go or C++，并没有 garbage collection，相反 Rust 的内存安全管理通过所有权与 borrow checker 的核心概念，实现了在静态编译期对引用的生命周期的追踪，而不需要在运行时进行额外的垃圾回收，这相当于直接提升了运行效率。

Rust `Ownership` 概念是较新奇的观念，是 Rust 零成本抽象中很重要的一个组成，它指出每一个值某一时刻只能被一个变量拥有，即 owner，超出作用域后，值会被销毁，即每个引用都有相应的生命周期。


在 C/C++ 语言中，Stack 和 Heap 是很常用的概念，它们都是程序运行时可以使用的内存空间。

通常说的调用堆栈指的就是 Stack，它是在硬件层实现的一个 LIFO - Last in, first out 数据结构，通过 CPU 的 `pop` `push` 指令操作。这些指令控制着 CPU 内部的一个堆栈指针寄存器 SP - Stack Pointer，在程序运行时，始终指向 Stack 顶部，会随着函数调用、返回转移。

对比 Stack 和 Heap 内存： 

- Stack 内存访问更快，有寄存器直接可达，通常在程序编译后就知道要使用多大的 Stack 内存；
- 而堆内存，更多是由开发者主动申请调配，通过 `malloc()` `free()` 等函数动态内存分配的指针管理，典型的就是使用 `new` 关键字来为实例申请内存。

在 Rust 中，跟踪代码的哪些部分正在使用堆内存，最小化堆上重复数据的数量，清理堆上未使用的数据以避免空间耗尽，这些都是所有权所要解决的问题。

一旦您了解了所有权，就不需要经常考虑堆栈和堆，但是知道管理堆数据是所有权存在的原因有助于解释它为什么以这种方式工作。

当然，Rust 提供了 unsafe 特性，还有 std::boxed::Box alloc::boxed::Box 即 Smart Pointers 这些模块提供的对象，简化对 Heap 内存的使用。

    let five = 5;           // 5 in Stack memory
    let five = Box::new(5); // 5 in Heap memory

这里就来解析所有权的几种处理方式：

- `shared reference` &T 共享出借，如 `let a = &b;`，将 b 出借到 a；
- `mutable reference` &mut T 可变出借，如 `let a = &mut b;`，将 b 可变引用出借到 a，即通过 a 就可以修改 b 的数据；
- `ownership move` 转移所有权，如 `let a = b;`，所有权由 b 转移给 a；

花括号在 Rust 中通常是变量作用域隔离的标志，除了花括号以外，还有其他的一些情况会使 Ownership 发生变化。

先来一个简单的示范，很明显 `a` `b` 都在使用 Stack 内存：

```rust,ignore
fn main() {
    let a; 
    {
        let b = 1;
        a = &b;
    }
    println!("a: {}", a);
}
```

编译出错提示变量 `b` 不够长寿：

    error[E0597]: `b` does not live long enough
     --> src\main.rs:5:13
      |
    5 |         a = &b;
      |             ^^ borrowed value does not live long enough
    6 |     }
      |     - `b` dropped here while still borrowed
    7 |     println!("a: {}", a);
      |                       - borrow later used here

因为 `a` 借值 `b` 用于花括号作用域外的打印输出语句，但 `b` 超出作用域后就结束生命了，这时 borrow checker 起作用检查到错误的存在。

注意，外借这个概念，就是 `a` 引用 `b` 的值。

虽然，语句块中给 `a` 赋值的是一个引用，但是，引用的对象在超出语句块后就失效了，引用处于悬空状态 Dangling References。


数值变量的赋值是值拷贝，如果是字符串变量赋值，情况就绝然不同。这是先说原因：对于较大的对象来说，直接复制是非常浪费空间和时间的，因此要直接引用而不是复制。

对于简单数据类型，如数值的数据都是存储在栈内存中，自动管理。而像 String 或一些自定义的复杂数据结构，其数据则存储在堆内存中。 虽然，堆栈的说法是连起来叫，但是他们区别很大。在 C++ 的编程概念中，Heap 和 Stack 内存分配机制不同，Stack 内存由编译器自动分配管理，而 Heap 内存则要手动申请，典型的就是通过 `new` 关键字来分配。

字符串的值是分配在堆空间的，字符串变量是此空间的一个引用，包括一个指向堆空间的指针。当一个字符串赋值给另一个字符串，堆空间的值并没有被复制，只是转移了所有权，变量的 owner 变为接收赋值的变量，原变量将失去对此内存空间的所有权！离开作用域时，原变量也会被自动清理。

这就是 Ownership 在变化，Ownership 从一个变量移动到另一个变量。

如下面两段代码：

    let x = 5;
    let y = x;
    println!("x: {}", x);

    let s1 = String::from("hello");
    let s2 = s1;
    println!("s1: {}", s1);

第一段代码是正确的，对于第二段代码，按 C++/C 语言的逻辑应该也是正确，但实际上 Rust 并不是这样做的。

    error[E0382]: borrow of moved value: `s1`
     --> src\main.rs:8:31
      |
    6 |     let s1 = String::from("hello");
      |         -- move occurs because `s1` has type `std::string::String`, which does not implement the `Copy` trait
    7 |     let s2 = s1;
      |              -- value moved here
    8 |     println!("s1: {} s2: {}", s1, s2);
      |                               ^^ value borrowed here after move

错误提示，`s1` 因为没有实现 Copy trait 会引起所有权移动，即所有权移动发生在给 `s2` 赋值的语句上，转移了所有权后 `s1` 就失活不能再使用了。

`String::from()` 方法后面实现了 Heap 内存的申请和释放，在字符串间进行赋值时，就会将指针地址转交出去，而不是复制同样的字符内容。

简化上面 String 对象的属性如下：

    |   Prop  |  value  |                 heap memory
    |---------|---------|                 ---------------------
    | pointer | address | ========> index | 0 | 1 | 2 | 3 | 4 |
    | length  | 5       |           value | h | e | l | l | o |
    | capcity | 5       |

在执行 `s12 = s1` 赋值时，就是在拷贝 String 对象的属性，即 pointer 指针和字符串长度等等属性，但是内容还是指向同一块内存地址，并没有对字符串内存进行复制，这就是 shallow copy，相对于 deep copy。

Rust 永远不会进行默认的深拷贝，除非提供一个 Copy trait，如果一个类型有实现 Copy trait，则可以直接通过赋值来传递值。类似数值变量的传递方式，本质就是在 Stack 中复制变量所绑定的值。

对于字符串对象，可以使用其 `clone()` 方法来现实复制：

    let s1 = String::from("hello");
    let s2 = s1.clone();

前面说了变量超出作用域就失效，同时 Rust 会执行一个 `drop()` 函数来做清理工作，如果没有所有权抽象机制，在字符串赋值后，`s1` 和 `s2` 指向同一块内存，在它们失效时将会有两个 `drop()` 函数被调用，这就会对同一内存地址执行两次 `free()` 操作，破坏内存结构。

通过所有权机制，时刻只有一个变量引用同一内存地址，永远不会出现重复释放同一内存的错误。

如果一个类型的任何部分实现了 Drop trait，则无法使用 Copy trait。能使用 Copy trait 的类型有：

- All the integer types, such as `u32`.
- The Boolean type, `bool`, with values true and false.
- All the floating point types, such as `f64`.
- The character type, `char`.
- 还有包含以上类型的元组 Tuples，例如 (i32, i32) implements Copy, but (i32, String) does not.


### 🟢🔵 Borrowing 借用所有权
- https://doc.rust-lang.org/beta/rust-by-example/scope/borrow.html
- https://doc.rust-lang.org/book/ch04-02-references-and-borrowing.html
- Guide to Rustc Development 44. The borrow checker https://rustc-dev-guide.rust-lang.org/borrow_check.html
- A Practical Intro to Macros in Rust 1.0 https://danielkeep.github.io/practical-intro-to-macros.html

掌握基本概念后，再来看看函数与所有权的联系。

官方电子书在 Understanding Ownership 章节给出的这段示范很清晰的解析了 Ownership and Functions 的关系： 

```rust,ignore
fn main() {
    let s = String::from("hello");  // s comes into scope
    takes_ownership(s);             // s's value moves into the function...
                                    // ... and so is no longer valid here

    let x = 5;                      // x comes into scope
    makes_copy(x);                  // x would move into the function,
                                    // but i32 is Copy, so it’s okay to still
                                    // use x afterward

} // Here, x goes out of scope, then s. But because s's value was moved, nothing
  // special happens.

fn takes_ownership(some_string: String) { // some_string comes into scope
    println!("{}", some_string);
} // Here, some_string goes out of scope and `drop` is called. The backing
  // memory is freed.

fn makes_copy(some_integer: i32) { // some_integer comes into scope
    println!("{}", some_integer);
} // Here, some_integer goes out of scope. Nothing special happens.
```

对于对象类型，进入函数的过程有点类似对象的赋值过程，所有权转移了。所有权移交给了函数内部的对应变量，当函数返回，其内部变量超出作用域就失效，并且 `drop()` 执行了内存清理。

对于原始值类类型，进入函数的过程也就是在 Stack 复制数据的过程，返回时只是调用堆栈的恢复，不用涉及 Heap 内存的清理。

为了避免所有权的转移，可以引用传递参数，即在参数列表中加引用操作符号 `&String`，然后调用时也更改为会传入引用 `&s`，引用对象允许使用对象的值，但不获取所有权。

这种获取引用作为函数参数叫做借用，References and Borrowing，这个称谓很恰当，例如一个人借用了某样东西，从哪里借来还需要还回去。

借来的东西可以使用，但是不能损坏或修改。如果想尝试修改借用变量，会无法编译。如果需要修改一个引用的值，需要传递一个可变引用：`&mut s`

按借用所有权方式来重写前面的代码，注意修改可变引用时，也像 C++ 一样使用星号进行解引用：

```rust,ignore
fn main() {
    let mut s = String::from("hello");
    takes_ownership(&mut s);
    println!("{}", s);
}

fn takes_ownership(some_string: &mut String) {
    println!("{}", some_string);
    *some_string = String::from("news");
}
```

在使用引用时，注意两条约束：

- 不能同时使用 mutable & immutable 引用，避免数据读写并发执行；
- 不能存在多个 mutable 引用，避免数据竞争；

这两条约束可以给 Rust 程序编译优化带来极大的好处，它们避免了编译期就出现 `data races`，这种类似多线程的 `race condition` 状况，发生在以下情形：

- 同时有多个指针访问相同数据。
- 至少有一个指针在进行写入操作。
- 没有同步机制来约束数据访问。

```rust,ignore
let mut s = String::from("hello");

let r1 = &s; // no problem
let r2 = &s; // no problem
let r3 = &mut s; // BIG PROBLEM
// error[E0502]: cannot borrow `s` as mutable because it is also borrowed as immutable

println!("{}, {}, and {}", r1, r2, r3);
```

```rust,ignore
let mut s = String::from("hello");

let r1 = &mut s; // first mutable borrow occurs here
let r2 = &mut s; // second mutable borrow occurs here
// error[E0499]: cannot borrow `s` as mutable more than once at a time

println!("{}, {}", r1, r2);
```

有趣的是，Rust 编译器可以很智能地判断出，你的代码有没有在同时使用 mutable & immutable 引用。

以下代码是正确的，因为两种方式没有同时使用：

```rust,ignore
let mut s = String::from("hello");

let r1 = &s; // no problem
let r2 = &s; // no problem
println!("{} and {}", r1, r2);
// r1 and r2 are no longer used after this point

let r3 = &mut s; // no problem
println!("{}", r3);
```

悬空引用 Dangling References 前面已经解析过，当引用超出作用域后，对应的值就失效不能被使用了：

```rust,ignore
fn main() {
    let reference_to_nothing = dangle();
}

fn dangle() -> &String {
    let s = String::from("hello");
    &s
}
```

在函数中返回一个局部变量的引用是不可行的，那么要返回局部变量，要么进行 Copy，要么移动所有权。而对于 String，它是没有实现 Copy 特性的，就需要自己处理。

解决方法就是不使用引用返回：

```rust,ignore
fn main() {
    let reference_to_nothing = no_dangle();
}

fn no_dangle() -> String {
    let s = String::from("hello");
    s
}
```

和返回引用方式的差别在于，没有使用引用的返回方式在函数结束时，失效的只是 `s` 变量，而所有权已经转移，其所指向的字符串内容依然有效。

考虑一下引用与所有权的关系，这也许会是难以理解的。

在 Rust 系统的所有权抽象概念中，所有权是针对内存中保存的数据，也就是 values 提出来的。变量也是一个抽象概念，它需要绑定一个值，即占有值的 Ownership，这样的变量就是一个 Owner。

而引用这一概念，可以将其理解为对内存数据的直接操作，剥离了变量、所有权这些概念，也就不涉及所有权层面上的操作。


### 🟢🔵 Slices 切片类型与所有权
- https://doc.rust-lang.org/book/ch04-03-slices.html
- Range Expressions https://doc.rust-lang.org/stable/reference/expressions/range-expr.html
- Storing UTF-8 Encoded Text with Strings https://doc.rust-lang.org/book/ch08-02-strings.html
- https://doc.rust-lang.org/stable/std/primitive.slice.html
- https://doc.rust-lang.org/stable/std/slice/index.html

首先，切片是没有所有权概念的，这一点使得它与其它数据类型区别开来。

Rust 支持 Range 表达式，这是支持切片的语法基础：

    1..2;   // std::ops::Range
    3..;    // std::ops::RangeFrom
    ..4;    // std::ops::RangeTo
    ..;     // std::ops::RangeFull
    5..=6;  // std::ops::RangeInclusive
    ..=7;   // std::ops::RangeToInclusive

字符串字面量表达就是切片类型，String Literals Are Slices，它们就是内存中的二进制数据，类型为 `&str`，即字面量字符串是不可变的：

    let s = "Hello, world!";
    let s: &str = "Hello, world!";

尝试实现一个函数，它返回输入字符串的第一个词：

```rust,ignore
fn main() {
    let mut s = String::from("hello world");

    let hello = first_word(&s); // immutable borrow occurs here
                                // s.clear(); mutable borrow occurs here
    println!("the 1st word is {}", hello);
    s.clear();
}

fn first_word(s: &String) -> &str {
    let bytes = s.as_bytes();

    for (i, &item) in bytes.iter().enumerate() {
        if item == b' ' {
            return &s[..=i];
        }
    }

    &s[..]
}
```

知道字符串切片后，可以将参数类型改变使用字符串类型切片，这样就更通用了：

```rust,ignore
let mut s = String::from("hello world");
println!("the 1st word is {}", &s[..5]);
// println!("the 1st word is {}", s[..5]);
// error[E0277]: the size for values of type `str` cannot be known at compilation time
```

除了字符串可以切片，数组也可以切片：

```rust,ignore
let a = [1, 2, 3, 4, 5];
let slice = &a[1..3];
```

以上数组切片的类型就是 `&[i32]`。

使用 Rust 装盒模块，可以将数据保存到 Heap 内存中：

```rust,ignore
// A heap-allocated array, coerced to a slice
let boxed_array: Box<[i32]> = Box::new([1, 2, 3]);

// A (shared) slice into an array
let slice: &[i32] = &boxed_array[..];
```

和 Trait 指针一样，动态切片是 DST - dynamically sized types，可以通过以下代码查看与普通指针的区别：

```rust,ignore
use std::mem::size_of;

dbg!(size_of::<&u32>());        // 8
dbg!(size_of::<&[u32; 2]>());   // 8
dbg!(size_of::<&[u32]>());      // 16
```

对所有类型来说，其动态切片的指针都是一样大小的，所以常见 `&[T]` or `&mut [T]` 两种形式。

因为是普通指针的一倍大，所以也叫作 fat pointer，多出来的空间是用来保存长度信息，可以用类似以下的结构来表达胖指针：

```rust,ignore
struct SliceRef { 
    ptr: *const u32, 
    len: usize,
}
```

数组类方法实现：

    impl<T> [T]
    pub fn sort(&mut self) where T: Ord,
    pub fn sort_by<F>(&mut self, compare: F) where F: FnMut(&T, &T) -> Ordering,
    pub fn sort_by_key<K, F>(&mut self, f: F) where F: FnMut(&T) -> K, K: Ord,
    pub fn sort_by_cached_key<K, F>(&mut self, f: F) where F: FnMut(&T) -> K, K: Ord,
    pub fn to_vec(&self) -> Vec<T, Global> where T: Clone,
    pub fn to_vec_in<A>(&self, alloc: A) -> Vec<T, A> where T: Clone, A: Allocator,
    pub fn into_vec<A>(self: Box<[T], A>) -> Vec<T, A> where A: Allocator,
    pub fn repeat(&self, n: usize) -> Vec<T, Global> where T: Copy,
    pub fn concat<Item>(&self) -> <[T] as Concat<Item>>::Output where Item: ?Sized, [T]: Concat<Item>,
    pub fn join<Separator>(&self, sep: Separator) -> <[T] as Join<Separator>>::Output where [T]: Join<Separator>,

示范：

```rust,ignore
let mut v = vec![1, 2, 3, 4, 5, 6];
v.sort_by_key(|&num| num<4);
assert_eq!(v, [4,5,6, 1,2,3]);
println!("{:?}", v);
```



## ⚡ Lifetime 生命周期
- https://doc.rust-lang.org/book/ch10-03-lifetime-syntax.html
- https://doc.rust-lang.org/std/keyword.const.html
- https://doc.rust-lang.org/rust-by-example/custom_types/constants.html
- https://doc.rust-lang.org/rust-by-example/scope/lifetime.html
- https://doc.rust-lang.org/rust-by-example/variable_bindings/scope.html
- https://doc.rust-lang.org/rust-by-example/variable_bindings/freeze.html
- Trait and lifetime bounds https://doc.rust-lang.org/stable/reference/trait-bounds.html
- Lifetime elision https://doc.rust-lang.org/stable/reference/lifetime-elision.html
- Memory allocation and lifetime https://doc.rust-lang.org/stable/reference/memory-allocation-and-lifetime.html
- Common Rust Lifetime Misconceptions https://github.com/pretzelhammer/rust-blog/blob/master/posts/common-rust-lifetime-misconceptions.md

前面解析的引用所有权的出借概念，其实就是在讨论引用的生命周期，Rust 的引用都有生命周期，生命周期也只是对引用约束。

而作用域对变量的生存周期的作用，又常常与引用的生命周期相混淆。需要明确，Rust 的难点在于引用的生命周期，引用是为了避免复制数据而提升运行效率，没有引用，也就没有 Rust 复杂的 lifetime。

官方文档 rust-by-example 给出的概念演示代码，注意 i 变量和两个引用的生命周期作用范围：

```rust,ignore
fn main() {
  let i = 3; // Lifetime for `i` starts. ────────────────┐
  { //                                                   │
      let borrow1 = &i; // `borrow1` lifetime starts. ──┐│
      println!("borrow1: {}", borrow1); //              ││
  } // `borrow1 ends. ──────────────────────────────────┘│
  { //                                                   │
      let borrow2 = &i; // `borrow2` lifetime starts. ──┐│
      println!("borrow2: {}", borrow2); //              ││
  } // `borrow2` ends. ─────────────────────────────────┘│
} // Lifetime ends. ─────────────────────────────────────┘
```

Rust 的代码块也算是一个作用域，通过 `let` 语句将引用绑定到 borrow1 或 borrow2 的引用，在超出代码块后就结束了。而变量 i 的生命周期显然比它们更长，否则引用就是悬空状态。

通常，Rust 引用的生命周期不是手动指定的，和类型自动推断一样，编译器会根据传入的参数进行生命周期推断。编译器会持续根据语句上下文推断出生命周期参数，并选择最小的那个。当编译器遇到有多种不同的生命周期无法确定，就需要 annotate lifetimes 来指示编译器更好地处理，生命周期标注的目的是为了消除歧义。

Dust 没有运行时的 GC 行为，它通过编译时内存检查和引用，基于 borrowing and ownership 实现静态垃圾回收机制。Rust 不在运行时通过引用计数检查的方式回收内存，而是在编译时追踪检查生命周期，这使得程序运行非常高效。

以下例子演示了 Scope & Shadowing 的作用：

```rust,ignore
fn main() {
    let shadowed_binding = 1;

    {
        // before being shadowed
        assert_eq!(1, shadowed_binding);

        // This binding *shadows* the outer one
        let shadowed_binding = "abc";
        assert_eq!("abc", shadowed_binding);
    }
    // shadows clear!
    assert_eq!(1, shadowed_binding);

    // This binding *shadows* the previous binding
    let shadowed_binding = 2;
    assert_eq!(2, shadowed_binding);
}
```

以下示范在不同作用域下影子现象引起的 Frozen data 的作用：

```rust,ignore
fn main() {
   let mut _mutable_integer = 7i32;

    {
        // Shadowing by immutable `_mutable_integer`
        let _mutable_integer = _mutable_integer;

        // Error! `_mutable_integer` is frozen in this scope
        // _mutable_integer = 50;
    }

    // Ok! `_mutable_integer` is not frozen in this scope
    _mutable_integer = 3;
}
```

Rust 的 move semantics, borrowing, lifetime 之类的概念加在一起，确实让语言变得复杂不堪。Rust 文档都说，你可能需要“fight with the borrow checker”。为了通过这些检查，你必须用很怪异的方式来写程序，随着问题复杂度的增加，就要求有更怪异的写法。

在深入理解生命周期之前，我们需要将常规意义的作用域概念作一下调整，Rust 生命周期这个术语和作用域密切联系，但又不是等价关系。

生命周期注解的语法格式如下，前缀一个 apostrophe：

- `&i32` 常规语法表示引用；
- `&'a i32` 带有显式生命周期表示的引用；
- `&'a mut i32` 带有显式生命周期的可变引用；

通常，单个的生命周期标注本身是没什么意义的，因为 Rust 只需要通过它来了解多个引用之间的生命周期关系。


### 🟢🔵 Function & Lifetimes

来看看更通用的生命周期标注语法：

    foo<'a, 'b: 'a>
    // `foo` has lifetime parameters `'a` and `'b`

因为和泛型语法表达相似，Rust 将这种使用尖括号的语法风格称为 Generic Lifetimes 泛型生命周期。尖括号指定的是泛型参数，这里用来声明生命周期，用它来关联函数输入参数与返回值的生命周期关系。参数部分叫做输入声明周期，返回值部分叫做输出生命周期。

这个示范代码表示，foo 同时拥有两个生命周期定义，并且 foo 不可以比 `'a` 或者 `'b` 更长久。同时 `'a` 至少和 `'b` 生存周期一样长，前者包含后者。

例如，以下两个函数是等价的：

    fn elided_pass(x: &i32) -> &i32 { x }

    fn annotated_pass<'a>(x: &'a i32) -> &'a i32 { x }

生命周期注解可以省略，因为即使没有生命周期注解，编译器也可以推断出来，输入、输出有相同的生命周期。

方法显式定义了 `'a` 生命周期，生命周期标注的意义如下：

- 参数 `x` 具有 `'a` 生命周期，它至少和函数一样长久。
- 返回引用也和 `'a` 生命周期一样长久，实践中，参考列表会有多个生命周期，返回值应该和生命周期最短的一致。
- 返回引用必需与输入参数有相同的生命周期，或者是 `'static` 生命周期，但不能长于输入的生命周期。
- `main()` 函数不能有泛型生命周期参数。

这意味着从函数内部返回的这个引用，和函数外的 `x` 在同样的作用域中具有同样的可引用性，而不会出现一个引用比另一更先结束生存，即不会因为清理，而导致引用失效。

显式标注生命周期后，Rust 就会再进行推断了，并且会按指定要求进行借用检查，并且应该拒绝任何不符合这些约束的值。标注通常只需要在函数签名中出现，编译器会自动分析函数体，只在引用函数外部代码不可能分析时，才需要进行手动标注。

请注意，函数不需要确切地知道参数的寿命，只需要一些作用域可以替换为满足此签名的 'a 生命周期。

生命周期标注就是用来告诉编译器，被标注的对象的生存时间要以标注的生命周期为约束，不可以超出这个约束时间，否则就是一个指针悬停问题 Dangle References。

生命周期管理的一个主要目的就是防止悬空引用 Dangling References，前面已经解析过，当内部作用域的引用超出作用域失效后，值就失效不能被使用了，外部对应的引用就处理悬停状态：

```rust,ignore
fn main() {
    let reference_to_nothing = dangle();

    let reference_to_nothing; 
    {
        let b = 1;
        reference_to_nothing = &b;
    }
}

fn dangle() -> &String {
            // ^ expected named lifetime parameter
            // error[E0106]: missing lifetime specifier
    let s = String::from("hello");
    &s
}
```

以上示范中，无论是 `dangle()` 函数内的 `&s` 还是语句块中的 `&b` 都是在出借所有权，在超出作用域后引用失效，即生命周期结束，外借的引用也当然失效，Rust 编译器会通过 borrow checker 检查哪些借用是用效的。


比如，以下示范中有两个 `longest()` 函数，其中一个带有生命周期标注信息的版本才可以正常工作：

```rust,ignore
// normal reference version
// error[E0106]: missing lifetime specifier
// = help: this function's return type contains a borrowed value, but the signature does not say whether it is borrowed from `x` or `y`
//                              ↓ expected named lifetime parameter
fn longest(x: &str, y: &str) -> &str {
    if x.len() > y.len() { x } else { y }
}
// lifetime annotated version
fn longest<'a>(x: &'a str, y: &'a str) -> &'a str {
    if x.len() > y.len() { x } else { y }
}

fn main() {
    let string1 = String::from("abcd");
    let string2 = "xyz";

    let result = longest(string1.as_str(), string2);
    println!("The longest string is {}", result);
}
```

首先，返回函数体内的引用这一做法是不被允许的，因为函数内部的数据会在函数结束时被清空，其所有权也一并消除，这必然会导致悬空引用 Dangling References。

但是返回外部传入函数的引用是可行的，而版本一的错误在于，使用引用传参、并返回引用，而没有声明引用自何处。是因为 Rust 编译器在处理函数体中的条件语句时，有两个可能返回值 `x` 或 `y`，在编译期不可预知。如果参数只有一个，那么就可以省略生命周期标注。定义好函数后，具体传什么值进入也是不可预知，borrow checker 也不能确定两个后备返回值与最终回返值的生命周期关系。

简单地说，Dust 编译器不能正确地追踪引用，就不能正确地管理关联的内存资源，也无法在编译期完全需要处理好的资源管理工作。

而版本二，显式标注生命周期，传入参数有明确的生命周期定义。这样处理的结果就是，Rust 编译知道返回值和输入参数有同样的生命周期，所以，无论返回 `x` 或 `y` 它们都可以在 `main()` 函数中正确地使用借出的所有权。

再来看另一个列子：

```rust,ignore
fn failed_borrow<'a>() {
  let _x = 12;

  // ERROR: `_x` does not live long enough
  let y: &'a i32 = &_x;
}
```

函数内部的局部变量 `_x`，下划线表示内部使用，函数本身没有参数也没有返回值，显式使用 `'a` 生命周期，这会带来一些影响。

尝试在内部借用内部 `&_x` 变量，并且指明生命周期 `'a`，即借用具有和函数相同的生命周期。

但是，对于变量 `_x` 本身会在函数结束时释放，从编译器角度来看，函数要负载局部变量的清理，因此生命周期理应比局部变量更长一点。这就导致了，被借对象的生存时间比借用还短，引用悬空。所以不能通过所有权检查机制，编译器也给出提示条件不满足：`_x` 被借用于 `'a` 生存周期。

    error[E0597]: `_x` does not live long enough
    fn failed_borrow<'a>() {
                     -- lifetime `'a` defined here
      let y: &'a i32 = &_x;
             -------   ^^^ borrowed value does not live long enough
             |
             type annotation requires that `_x` is borrowed for `'a`
    }
    - `_x` dropped here while still borrowed


### 🟢🔵 Temporary & Lifetimes elision
- Validating References with Lifetimes - Lifetime elision https://doc.rust-lang.org/book/ch10-03-lifetime-syntax.html#lifetime-elision

Rust 用 `let` 语句来创建变量，并绑定到等号右侧的值上，绑定这个动作也涉及了一些生存周期的内容。

在 Rust 中，临时值的生命周期是其语句的结尾，除非使用 let 将一个临时值绑定到名称，这样可以获得更长的生命周期。

例如，如下两个函数中，返回的临时值，就没有使用 let 绑定到变量。

```rust,ignore
fn take_down() -> &str {
    "tempory"
}

fn take_ref(it: &String) -> &str {
    "tempory"
}
```

对于 tack_ref，可以正确返回的临时值，而 take_down 却不能正确返回临时值。

    error[E0106]: missing lifetime specifier
       --> src\main.rs:130:19
        |
    130 | fn take_down() -> &str {
        |                   ^ help: consider giving it a 'static lifetime: `&'static`
        |
        = help: this function's return type contains a borrowed value, but there is no value for it to be borrowed from

这是因为，编译器可以从函数参数中推测生命周期信息，而 take_down 函数没有参数可供参考，所以编译不能通过。

在 Rust 早期历史版本中，每个引用都需要显式标注生命周期，否则不能通过编译。而 Rust 语言的发展向更少的生命周期标注方向发展，因为生命周期标注确实是烦人。

对于目前，take_down 生命周期标注有两种形式：

    fn take_down<'a>() -> &'a str {
    fn take_down() -> &'static str {


有些临时值表现比较隐蔽，如下代码中就有临时值：

```rust,ignore
fn main() {
    let mut foo = &mut "hello".to_string();
    // temporary value dropped while borrowed
    foo = &mut String::from("world");
    //         ^^^^^^^^^^^^^^^^^^^- temporary value is freed at the end of this statement
    //         |
    //         creates a temporary which is freed while still in use
    take_mut_ref(foo);
    //           --- borrow later used here
}

fn take_mut_ref(it: &mut String) {
    // ...
}
```

Rust 系统的所有值都有类型，代码中没有指定 foo 的变量类型，因为可以从等号右侧的值推测出来是 `&mut String`，它表示一个引用，并且这个引用可以用来改变指向的数据。

而 foo 变量声明为 mut，所以它是一个可变变量，所以后面可以对 foo 进行再次赋值。

在对 foo 变量进行第二次赋值时：

- `String::from("world")` 是一个 `String` 类型的值；
- 整个等号右侧是一个 `&mut String` 类型的值；

这里就隐藏了一个临时值，即 Strng 类型的值是作为一个临时值存在的。

同样理由，假如 foo 的类型定义为 `&String`，第二次赋值表达式如下：

    foo = &String::from("world");

同样也存在一个 `String` 类型的临时值，如果不在后面使用 foo 变量，那么这个临时值是没有任何副作用的。

而一旦后面用到了 foo 变量，那么，foo 引用到了一个临时变量，而这个临时变量早就在赋值语句结束时就释放了，这就导致内存无效引用，编译不能通过。

所以，正解的做法是使用 let 将临时值绑定到变量上：

    let foo = &String::from("world");
    let foo = &mut String::from("world");


### 🟢🔵 Lifetime Bound Syntax
- https://doc.rust-lang.org/rust-by-example/scope/lifetime/lifetime_bounds.html
- https://doc.rust-lang.org/stable/reference/trait-bounds.html

和泛型可以使用 Trait Bound 语法一样，生命周期也可以绑定。

- `<'_>` lifetime elision 生命周期省略。
- `<'a: 'b, 'b>` reads as lifetime `'a` is at least as long as `'b`.
- `T: 'a` 表示 T 类型中的任何引用都要活得和 `'a` 一样长
- `T：Trait + 'a` 表示 T 类型必须实现 Trait 扩展方法，并且任何 T 类型引用都要活过 `'a` 一样长

```rust,ignore
#[derive(Debug)]
struct Ref<'a, T: 'a>(&'a T);
// `Ref` contains a reference to a generic type `T` that has
// an unknown lifetime `'a`. `T` is bounded such that any
// references in `T` must outlive `'a`. Additionally, the lifetime
// of `Ref` may not exceed `'a`.

// A generic function which prints using the `Debug` trait.
fn print<T>(t: T) where
    T: Debug {
    println!("`print`: t is {:?}", t);
}

// Here a reference to `T` is taken where `T` implements
// `Debug` and all *references* in `T` outlive `'a`. In
// addition, `'a` must outlive the function.
fn print_ref<'a, T>(t: &'a T) where
    T: Debug + 'a {
    println!("`print_ref`: t is {:?}", t);
}

fn main() {
    let x = 7;
    let ref_x = Ref(&x);

    print_ref(&ref_x);
    print(ref_x);
}
```

Generic Type Parameters, Trait Bounds, and Lifetimes Together

```rust,ignore
use std::fmt::Display;

fn longest_with_an_announcement<'a, T>(
    x: &'a str,
    y: &'a str,
    ann: T,
) -> &'a str
where
    T: Display,
{
    println!("Announcement! {}", ann);
    if x.len() > y.len() {
        x
    } else {
        y
    }
}
```


### 🟢🔵 Static 静态生命周期
- https://doc.rust-lang.org/rust-by-example/scope/lifetime/static_lifetime.html
- https://doc.rust-lang.org/rust-by-example/custom_types/constants.html

常量中唯一允许的生存期是 `'static`，它是 Rust 程序常量默认包含的生存期。

例如，定义一个带有静态生成期的字符串常量，当然可以省略这个生存期，因为字符串字面量本身就是 `&'static str` 类型，它是只读的类型：

    const WORDS: &'static str = "hello rust!";
    const WORDS: &str = "hello convenience!";
    static WORDS: &str = "hello convenience!";

常量定义：

    const MAX_POINTS: u32 = 100_000;
    const HELLO: &str = "Hello, world!";

字符串对象类型是一种不能在编译期确定的的类型，所以不能定义这样一种常量：

    const DATABASE: String = String::from("something");

Rust 提供的宏这种高级特性可以做很多事，例如，将文件内容读入作为一个静态变量：

    const SRC: &'static str = include_str!("main.rs");
    const STR: &'static str = concat!("abc", "abc");

字面量字符串是硬编码在编译出的二进制文件里的，在运行时被加载到只读内存中。因此，它是不可变的，并且在整个程序运行时有效，因此它是 `'static` 的。

通常静态生存期是推断出来的，不必指定，修改可变静态变量是不安全的。

根据这个原理，就可以将前面 Dangling References 示范中的代码块改造为正确的引用：

```rust,ignore
fn main() {
    let a; 
    {
        static B: &i32 = &(123);
        a = &B;
    }
    println!("lifetime ok? {}", a);
}
```

如在函数中使用泛型 where 从句方式定义：

    // 'static as part of a trait bound:
    fn generic<T>(x: T) where T: 'static {}

但是，一个类型也可以用静态生存期修饰，区分以下两种形式：

- `&'static T` 是定义一个能够被安全地持有无限久的 T 类型，直到整个程序终止。
- `T: 'static` 表示 T 类型具有 `'static` 生命周期，能在运行时创建，能被安全和随意地改变，能被 drop，能活到整个程序终止。

在运行时生成动态分配的随机数据，然后返回一个 `'static` 引用是可行的，只需要付出内存泄漏的代价，例如：

```rust,ignore
use rand;

// generate random 'static str refs at run-time
fn rand_str_generator() -> &'static str {
    let rand_string = rand::random::<u64>().to_string();
    Box::leak(rand_string.into_boxed_str())
}
```

智能指针 Box 提供的 leak 方法暗示了有内存泄漏风险，它会返回一个 `&mut T`，如果没有为它指定一个生存周期，那么成为 `'static` 生存周期并长久地占据着某块内存，而且不能通过 Drop 主动进行释放。

以下示范，字符串对象如何传入 drop_static 函数中绑定 `'static` 生命周期，并从内存中释放：

```rust,ignore
#![allow(unused)]
use std::string::String;
use std::thread;
use std::time::Duration;
use rand;

fn drop_static<T: 'static>(t: T) {
    std::mem::drop(t);
}

fn main(){
    let mut strings: Vec<String> = Vec::new();
    for _ in 0..10_000_000 {
        if rand::random() {
            // all the strings are randomly generated
            // and dynamically allocated at run-time
            let string = rand::random::<u64>().to_string();
            strings.push(string);
        }
    }

    thread::sleep(Duration::from_secs(6));
    // strings are owned types so they're bounded by 'static
    for mut string in strings {
        // all the strings are mutable
        string.push_str("a mutation");
        // all the strings are droppable
        drop_static(string); // compiles
    }
    
    thread::sleep(Duration::from_secs(6));
    // all the strings have been invalidated before the end of the program
    println!("i am the end of the program");
}
```

变量 strings 是一个向量列表 `Vec<String>`，其元素 `String` 对象占据内存大小大概为：

- String 是胖指针，指针 8 字节，len 成员 usize 8 字节；
- 8 字节内容长度，由 u64 转字符生成的 8 字节内容；

按 1 千万个元素计算，总内存占用 240MB。

```rust,ignore
let o = vec![String::from("A"), String::from("B"), String::from("C")];
println!("{:p}", &o);    // 0x3bd8d7fa08
println!("{:p}", &o[0]); // 0x1f806a828d0
println!("{:p}", &o[1]); // 0x1f806a828e8
println!("{:p}", &o[2]); // 0x1f806a82900
```

### 🟢🔵 Struct 与生命周期

以下示范结构体，和元组化结构体即没有成员名称的结构体，如何使用生命周期定义，很函数中使用生命周期定义：

```rust,ignore
// A type `Borrowed` which houses a reference to an
// `i32`. The reference to `i32` must outlive `Borrowed`.
#[derive(Debug)]
struct Borrowed<'a>(&'a i32);

// Similarly, both references here must outlive this structure.
#[derive(Debug)]
struct NamedBorrowed<'a> {
    x: &'a i32,
    y: &'a i32,
}

// An enum which is either an `i32` or a reference to one.
#[derive(Debug)]
enum Either<'a> {
    Num(i32),
    Ref(&'a i32),
}

fn main() {
    let x = 18;
    let y = 15;

    let single = Borrowed(&x);
    let double = NamedBorrowed { x: &x, y: &y };
    let reference = Either::Ref(&x);
    let number    = Either::Num(y);

    println!("x is borrowed in {:?}", single);
    println!("x and y are borrowed in {:?}", double);
    println!("x is borrowed in {:?}", reference);
    println!("y is *not* borrowed in {:?}", number);
}
```

在结构体中使用生命周期定义，目的是为了保证结构体实例的生命周期应该和任意一个成员的生命周期共存，否则成员生命终结而结构体还在是没有意义的。

对象方法的生命周期标注：

```rust,ignore
struct ImportantExcerpt<'a> {
    part: &'a str,
}

impl<'a> ImportantExcerpt<'a> {
    fn level(&self) -> i32 {
        3
    }
}
```

对象方法中使用生命周期定义的格式也一样，以下例子为了演示效果，在元组化结构体的方法中添加生命周期注解，去掉也是正常的：

```rust,ignore
struct StructedTuple(i32);

impl StructedTuple {
    // Annotate lifetimes as in a standalone function.
    fn add_one<'a>(&'a mut self) { 
        self.0 += 1;
    }
    fn print<'a>(&'a self) {
        println!("`print`: {}", self.0);
    }
}

fn main() {
    let mut owner = StructedTuple(18);

    owner.add_one();
    owner.print();
}
```


### 🟢🔵 Trait 与生命周期
- https://doc.rust-lang.org/rust-by-example/scope/lifetime/trait.html

Trait 是 Rust 最有特色的类型扩展抽象系统，和 Golang interface 类似，基于组合的方式为各种类型的提供扩展方法。

在类型系统中，以下三个应该当三种不同的类型来看待：

- `T` 表示拥有主权的类型；
- `&T` 表示共享引用类型；
- `&mut T` 表示独有可变引用类型；

它们都是无限集，因为可以借用一个类型无限次。`T` 是其它两个，`&T` 和 `&mut T` 的超集，但是 `&T` 和 `&mut T` 没有交集。

用以下代码片段可以证明：

```rust,ignore
trait Trait {}

impl<T> Trait for T {}

// impl<T> Trait for &T {}
// ^^^^^^^^^^^^^^^^^^^^ conflicting implementation for `& _`
// impl<T> Trait for &mut T {}
// ^^^^^^^^^^^^^^^^^^^^^^^^ conflicting implementation for `&mut _`
```

只要为 `T` 实现了 Trait，就无法再为 `&T` 和 `&mut T` 实现 Trait，它们是等价的实现。



列如，以下示范中定义了一个 Borrowed 结构体，并结合生命周期定义，以正确处理 `x` 成员的引用生命周期。

```rust,ignore
// A struct with annotation of lifetimes.
#[derive(Debug)]
struct Borrowed<'a> {
    x: &'a i32,
}

// Annotate lifetimes to impl.
impl<'a> Default for Borrowed<'a> {
    fn default() -> Self {
        Self {
            x: &10,
        }
    }
}

fn main() {
    let b: Borrowed = Default::default();
    println!("b is {:?}", b);
}
```

`#[derive(Debug)]` 元数据作用是为 Borrowed 实现打印调试信息，即为格式模板 `{:?}` 填充数据。

如果不定义生命周期又是怎么回事？因为内部成员 `a` 是在 Borrowed 内部作用域定义的引用，如果没有定义一个生命周期，编译器根据无法管理它，相当于悬空指针。

在 Trait 可以使用静态生命周期定义，但是注意，Trait bound 它意味着绑定类型不包含任何非静态引用。方法关联的 receiver 可以想拿多久就拿多久，直到执行 `drop()` 把它放下，它才失效。

这是很重要的概念，即所有权总类型是通过 `'static` 生命周期绑定的，但是引用通常却不是。

```rust,ignore
use std::fmt::Debug;

fn print_it( input: impl Debug + 'static ) {
    println!( "'static value passed in is: {:?}", input );
}

fn main() {
    // i is owned and contains no references, thus it's 'static:
    let i = 5;
    print_it(i);

    // oops, &i only has the lifetime defined by the scope of
    // use_it(), so it's not 'static:
    print_it(&i);
}
```



## ⚡ Functional OOP 函数式面向对象编程
- Functors, Applicatives, And Monads In Pictures https://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html
- 函数式编程别烦恼 https://juejin.cn/post/6844903621507678216
- 为什么Lisp语言如此先进？ http://www.ruanyifeng.com/blog/2010/10/why_lisp_is_superior.html
- Object Oriented Programming Features of Rust https://doc.rust-lang.org/book/ch17-00-oop.html

编程范式 Programming paradigm 一词最早来自 Robert Floyd 在 1979 年图灵奖的颁奖演说，是指计算机中编程的典范模式或方法。是程序员看待程序应该具有的观点，代表了程序设计者认为程序应该如何被构建和执行的看法，与软件建模方式和架构风格有紧密关系。

现在主流的编程范式：

- `结构化编程` Structured programming
- `面向对象编程` Object-oriented programming 典型的 Java 就是面向对象编程。
- `函数式编程` Functional programming 典型的 C 语言就是函数式编程。
- `命令式编程` Imperative 主要思想是关注计算机执行的步骤，即一步一步告诉计算机先做什么再做什么。
- `声明式编程` Declarative 它的主要思想是告诉计算机应该做什么，但不指定具体要怎么做。经典的 SQL 编程就是例子，以数据结构的形式来表达程序执行的逻辑。

C++ 或 Rust 则是多范式的系统编程语言，既是 OOP 也是 FP。

而 Golang 和 Rust 既 FP 又是 FOOP，基于函数式和抽象接口组合的面向对象编程，通过 interface 或 traits 关键字定义接口。

面对对象（OOP）可以理解为是对数据的抽象，比如把一个人抽象成一个 Object，关注的是数据与行为。

函数式编程是一种过程抽象的思维，就是对当前的动作去进行抽象，关注的是动作。

Lisp 是所有函数式语言的始祖，但 Lisp 并不单纯是函数式编程语言，而是多范型编程语言。使用它可以进行函数式编程，也可以进行过程式编程、面向对象编程。

Lisp 语言诞生带来 9 种新思想：

- if-else 条件结构，这在当时流行的 Fortran I 没有这个结构，它只有基于机器指令的 goto 结构。
- 函数是数据类型，有自己的字面表示形式（literal representation），能够储存在变量中，也能当作参数传递。
- 递归，Lisp 是第一种支持递归函数的高级语言。
- 变量的动态类型，变量是指针，其指向的值才有类型之分，复制变量相当复制指针，而不是其指向的数据。
- 垃圾回收机制。
- 程序由表达式组成，每个表达式都返回一个值，这与大多数语言不同，它们的程序由表达式和语句组成。

    区分表达式和语句，在 Fortran I 中是很自然的，因为它不支持语句嵌套。所以，如果你需要用数学式子计算一个值，那就只有用表达式返回这个值，没有其他语法结构可用，因为否则就无法处理这个值。

    后来，新的编程语言支持区块结构（block），这种限制当然也就不存在了。但是为时已晚，表达式和语句的区分已经根深蒂固。它从 Fortran 扩散到 Algol 语言，接着又扩散到它们两者的后继语言。

- 符号类型 symbol 它实际上是一种指针，指向储存在哈希表中的字符串，指针地址可以比较两个符号是否相等。
- 代码使用符号和常量组成的树形表示法（notation）。
- 无论什么时候，整个语言都是可用的。Lisp 并不真正区分读取期、编译期和运行期。

    在读取期运行代码，使得用户可以重新调整 Lisp 的语法；
    在编译期运行代码，则是 Lisp 宏的工作基础；
    在运行期编译代码，使得 Lisp 可以在 Emacs 这样的程序中，充当扩展语言；
    在运行期读取代码，使得程序之间可以用 S-expression 通信，近来 XML 格式的出现使得这个概念被重新"发明"出来了。

纯函数是一个重要的概念：

- 定义：一个函数如果输入参数确定，输出结果是唯一确定的，不对外造成影响，那么他就是纯函数。
- 特点：无状态，无副作用，无关时序，幂等（无论调用多少次，结果相同）。

参考：

    function pureAdd(x, y){
       return x + y
    }

    let sum = 0;
    function notPureAdd(){
        sum++
    }

函数柯里化 curry 是函数提纯的一种方法，它封装原函数，实现只给它传递一部分参数来调用它，返回一个函数去处理剩下的参数。

例如，将上面的 pureAdd 函数柯里化：

    function adder(y) {
       return function (x) { 
        return x + y;
       }; 
    }
    var addMore =  adder(2)(1)  

复杂一点的函数提纯示范：

    function change (fn , els , color){
        Array.from(els).map((item)=>(fn(item, color)))
    }

    function changeCurry(fn){
        return function(els, color){
            Array.from(els).map((item)=>(fn(item,color)))
        }
    }

经典函数式编程通常是下面这样：

    function double(x) {
      return x * 2
    }
    function add5(x) {
      return x + 5
    }

    var a = double(add5(1))

软件最基本的数据，就是各种值 value，如果以数据为核心，一个动作一个动作去执行：

    (5).add5().double()

显然，如果能这样执行函数的话，就舒服多啦。

为了实现这样的语法结构，首先要将数据当作一个对象来处理，因为要挂载方法。

这里直接函子 Functor 的实现：

    class Functor{
        constructor (value) {
           this.value = value ;
        }
        map (fn) {
          return Functor.of(fn(this.value))
        }
    }
    Functor.of = function (val) {
        return new Functor(val);
    }

    Functor.of(5).map(add5).map(double);

Functor 通过 map 方法实现方法管理容器，每一个值处理扣又映射到另一个容器。

函数式编程里面的运算，都是通过函子完成，即运算不直接针对值，而是针对管理这个值的容器，这个容器也可以称为上下方。

Haskell 语言中的 Functors, Applicatives, Monads, Arrows 等等都基于此原理。

    class Maybe{
           constructor (value) {
              this.value = value ;
           }      
           map (fn) {
              return this.value ? Maybe.of(fn(this.value)) : Maybe.of(null);
           }
        }
    Maybe.of = function (val) {
         return new Maybe(val);
    }

    var a = Maybe.of(null).map(function (s) {
      return s.toUpperCase();
    });

只需要把在中设置一个空值过滤，就可以完成这样一个 Maybe 函子。所以各种不同类型的函子，会完成不同的功能。

每个函子并没有直接去操作需要处理的数据，也没有参与到处理数据的函数中来，而是在这中间做了一些拦截和过滤，这和高阶函数有点像。

现在我们就用函数式编程做一个小练习： 我们有一个字符串，希望处理成大写的字符串，然后加载到指定 id 的 HTML 节点上。

    let $ = id => Maybe.of(document.getElementById(id));
    class Maybe{
       constructor(value){
            this.value = value;   
       }
       map(fn){
        return this.value ? Maybe.of(fn(this.value)) : Maybe.of(null);
       }
       static of(value){
          return new Maybe(value);
       }
    }
    let toUpperCase = str => str.toUpperCase();
    let html = id => content => {
       $(id).map(dom => {
          return (dom.innerHTML = content);
       });
    };

    Maybe.of(str).map(toUpperCase).map(html('text'));

注意 `html()` 函数嵌套结构：

- 如果只在里面加 return content，外面函数并没有返回值；
- 如果只在外面加 return，也取不到 content；
- 嵌套函数都加 return 这就出现了 Maybe.of( Maybe.of(str) ) 嵌套结构；

Monad 函子的功能比较重要，当需要处理的数据是 Maybe {value: Maybe} 这样的嵌套结构，可以加一个 `join()` 方法来返回 value，或者直接提供 `chain()` 方法在执行时直接执行 `map()` + `join()` 两个步骤。

    class Maybe{
       constructor (value) {
          this.value = value ;
       }      
       map (fn) {
          return this.value ? Maybe.of(fn(this.value)) : Maybe.of(null);
       }
       join ( ){
          return this.value;
       }
       chain(fn) {
          return this.map(fn).join();
       }
       static of(value){
          return new Maybe(value);
       }
    }

    Maybe.of(str).map(toUpperCase).chain(html('text'));

这样去掉一层嵌套的函子，返回的就是只有一层嵌套的函子啦。


### 🟢🔵 Functions 函数
- https://doc.rust-lang.org/book/ch03-03-how-functions-work.html
- https://doc.rust-lang.org/book/ch12-01-accepting-command-line-arguments.html
- Rust by Example - Functions https://doc.rust-lang.org/stable/rust-by-example/fn.html
- https://cheats.rs/#functions-behavior
- Functional Language Features: Iterators & Closures https://doc.rust-lang.org/book/ch13-00-functional-features.html

Rust 的函数和 C++ 的基本结构很相似，语法上还是有些差别的。

函数使用方式如下：

- Function 独立函数；
- Methods 作为对象方法，即附加到对象的函数；
- Closures 作为闭包使用，这是 Rust 中较复杂的功能；
- Higher Order Functions 高阶函数，函数作为参数并返回一个函数，仅仅加个壳；
- Diverging functions 发散函数，即没有返回的函数，也叫 Never ! 类型，如一个函数执行错误 panic；

首先，是函数声明中，使用 `->` 符号表示有返回值，没有返回值的函数不用这个符号。

其次，返回值的方式不同。例如，返回值可以使用 `return` 语句，也可以使用 `tail return` 返回值，即函数体最后一行，没有行末分号。

另外，Rust 花括号语句块也可以有返回值，它是一个完整的作用域，通过 `tail return` 返回一个值，注意不能加末尾的分号。

```rust,ignore
 fn main() {
    let x = plus_one(5);

    let y = {
        let x = 3;
        x + 1
    };
    println!("The value of x is: {} and y is: {}", x, y);

    let guess: u32 = "42".parse().expect("Not a number!");
    println!("guess {}", guess);
}

fn plus_one(x: i32) -> i32 {
    return x + 1;
    // x + 1
}
```

另外，`println!()` 是一个宏，而不是函数，区分函数和宏的唯一办法，就是看名称最后有没有感叹号。

在数学和计算机科学中，高阶函数是至少具有下列功能之一的函数，其他所有函数都是一阶函数：

- 将一个或多个函数作为参数。
- 返回一个函数作为结果。

高阶函数把传入的函数做一个封装，然后返回这个封装函数，达到更高程度的抽象。

在数学中，高阶函数也称为`算子`或`泛函`。微积分中的微分算子是一个很常见的例子，因为它把一个函数映射到它的导数，也是一个函数。

普遍的高阶函数应用例子：

- map 函数在许多函数式编程语言中都有，它是高阶函数的一个例子。它接受一个函数 f 和一个元素列表作为参数，结果返回一个新列表，其中f应用于列表中的每个元素。
- 排序函数，它将比较函数作为参数，允许程序员将排序算法与正在排序的项的比较分开。C标准函数qsort就是一个例子。
- fold 或 reduce
- Function composition
- Integration
- Callback
- Tree traversal

以下用两种方式编程实现 1000 以内的偶数平方和：

```rust,ignore
fn is_odd(n: u32) -> bool {
    n % 2 == 1
}

println!("Find the sum of all the squared odd numbers under 1000");
let upper = 1000;

// Imperative approach
let mut acc = 0;
// Iterate: 0, 1, 2, ... to infinity
for n in 0.. {
    let n_squared = n * n;

    if n_squared >= upper {
        break;
    } else if is_odd(n_squared) {
        acc += n_squared;
    }
}
println!("imperative style: {}", acc);

// Functional approach
let sum_of_squared_odd_numbers: u32 =
    (0..).map(|n| n * n)                             // All natural numbers squared
         .take_while(|&n_squared| n_squared < upper) // Below upper limit
         .filter(|&n_squared| is_odd(n_squared))     // That are odd
         .fold(0, |acc, n_squared| acc + n_squared); // Sum them
println!("functional style: {}", sum_of_squared_odd_numbers);
```

得益于 lazy iterators，上面函数式实现中，虽然给 `map()` `take_while()` `filter()` 这类方法都传入了一个闭包，但是它并没有对所有自然数都执行一遍，而是在执行 `fold()` 求值时才开始处理。

在 Rust 中永远不返回的函数也有类型，Never 类型用感叹号表示，如包含无限循环 `loop {}`，或者 panic：

```rust,ignore
#![feature(never_type)]
fn panic() -> ! {
    panic!("This call never returns.");
}

fn main() {
    let a = panic();
    println!("Programme panic and you can‘t see this line.");
    let x: ! = panic!("This call never returns.");
    println!("You will never see this line!");
}
```



### 🟢🔵 FOOP 函数式面向对象编程
- https://cheats.rs/#functions-behavior
- Object Oriented Programming Features of Rust https://doc.rust-lang.org/book/ch17-00-oop.html
- Design Patterns: Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides
- What Was the Gang of Four in China? https://www.thoughtco.com/the-gang-of-four-195613
- Rust by Example - Traits https://doc.rust-lang.org/rust-by-example/trait.html
- Abstraction without overhead: traits in Rust https://blog.rust-lang.org/2015/05/11/traits.html
- Dynamically Sized Types and the Sized Trait https://doc.rust-lang.org/book/ch19-04-advanced-types.html

Design Patterns: Elements of Reusable Object-Oriented Software 即《设计模式》一书由 Erich Gamma、Richard Helm、Ralph Johnson 和 John Vlissides 合著（Addison-Wesley，1995）。这几位作者常被称为四人组，而这本书也就被称为 the Gang of Four Book 或 GoF。

示范将函数附加到对象上作为方法使用：

```rust,ignore
struct Point { x: f64, y: f64, }

// Implementation block, all `Point` methods go in here
impl Point {
    // This is a static method used as constructors
    fn origin() -> Point {
        Point { x: 0.0, y: 0.0 }
    }

    fn new(x: f64, y: f64) -> Point {
        Point { x: x, y: y }
    }
}

struct Rectangle { p1: Point, p2: Point, }

impl Rectangle {
    // This is an instance method
    // `&self` is sugar for `self: &Self`, where `Self` is the type of the
    // caller object. In this case `Self` = `Rectangle`
    fn area(&self) -> f64 {
        let Point { x: x1, y: y1 } = self.p1;
        let Point { x: x2, y: y2 } = self.p2;

        ((x1 - x2) * (y1 - y2)).abs()
    }

    fn perimeter(&self) -> f64 {
        let Point { x: x1, y: y1 } = self.p1;
        let Point { x: x2, y: y2 } = self.p2;

        2.0 * ((x1 - x2).abs() + (y1 - y2).abs())
    }

    // This method requires the caller object to be mutable
    // `&mut self` desugars to `self: &mut Self`
    fn translate(&mut self, x: f64, y: f64) {
        self.p1.x += x;
        self.p2.x += x;

        self.p1.y += y;
        self.p2.y += y;
    }
}

// `Pair` owns resources: two heap allocated integers
struct Pair(Box<i32>, Box<i32>);

impl Pair {
    // This method "consumes" the resources of the caller object
    // `self` desugars to `self: Self`
    fn destroy(self) {
        // Destructure `self`
        let Pair(first, second) = self;

        println!("Destroying Pair({}, {})", first, second);

        // `first` and `second` go out of scope and get freed
    }
}

fn main() {
    let rectangle = Rectangle {
        p1: Point::origin(),
        p2: Point::new(3.0, 4.0),
    };

    // Instance methods are called using the dot operator
    // Note that the first argument `&self` is implicitly passed, i.e.
    // `rectangle.perimeter()` === `Rectangle::perimeter(&rectangle)`
    println!("Rectangle perimeter: {}", rectangle.perimeter());
    println!("Rectangle area: {}", rectangle.area());

    let mut square = Rectangle {
        p1: Point::origin(),
        p2: Point::new(1.0, 1.0),
    };

    // Error! `rectangle` is immutable
    //rectangle.translate(1.0, 0.0);

    // Okay! Mutable objects can call mutable methods
    square.translate(1.0, 1.0);

    let pair = Pair(Box::new(1), Box::new(2));
    pair.destroy();

    // Error! Previous `destroy` call "consumed" `pair`
    // pair.destroy();
    // TODO ^ Try uncommenting this line
}
```

要点：

- 使用 `struct` 定义结构体；
- 使用 `impl` 为结构体实现方法；
- 方法参数中第一个可以定义 Self 类型，并且命名为 self 表示一个成员方法，否则表示一个 static 方法；
- 另外，还能通过 `Box<i32>` 来演示如何使用 Heap 内存来编程；

Rust 为成员方法定义 self 提供了简写表达：

- `self` desugars to `self: Self`
- `&mut self` desugars to `self: &mut Self`
- `&self` is sugar for `self: &Self`


### 🟢🔵 Traits & Polymorphism

Rust 的类型系统基于组合思维，不像 C++/Java 通过类来包装，组合方式是函数式编程中实现面向对象编程的一种有效手段。并且，组合方式比类封装继承方式更能表达真实世界。

比如，真实世界中的鸟类，它会飞，那么定义类：

    class Bird {
        void fly(){}
    }
    class BlankSwan extends Bird {
        void fly(){ ... }
    }

当需要表达鸵鸟这种不会飞的鸟时，就需要好好设计一下类的继承关系了。

但是，使用组合方式，就不存在这种继承约束，不给鸵鸟实现 `fly()` 方法就行了，或者使用 Flyable Trait 来表达会飞的鸟，截至是不是鸟类的蝙蝠。

这种基于组合思维的面向对象编程 FOOP - Functional Object-Oriented Programming 是非常灵活的实现，并且没有 C++ 那样复杂内存模型。

通过组合与函数式编程，Rust 很好地实践了面向对象的三大原则，Characteristics of Object-Oriented Languages：

- Encapsulation that Hides Implementation Details, Objects Contain Data and Behavior
- Inheritance as a Type System and as Code Sharing
- Polymorphism 多态性对许多人来说是遗传的同义词，但它实际上是一个更一般的概念，指的是可以处理多种类型数据的代码。对于继承，这些多态类型通常是子类。

Rust 使用泛型来抽象不同的可能类型和实施 trait bounds，从而对这些类型实现扩展，这有时被称为有界参数多态性 Bounded Parametric Polymorphism。

用官方博客文章的总结来描述 Trait：

- Traits are Rust's sole notion of interface.
- Traits can be statically dispatched. Like C++ templates.
- Traits can be dynamically dispatched.
- Traits solve a variety of additional problems beyond simple abstraction.

如果一个类型系统允许一段代码在不同的上下文中具有不同的类型，这样的类型系统就叫做多态类型系统。对于静态类型系统语言来说，多态性的好处是可以在不影响类型丰富的前提下，为不同的类型编写通用的代码。

现代编程语言包含的多态形式：

- Parametric Polymorphism 可以实现泛型实例化作为参数时才去确定类型。
- Ad-hoc Polymorphism 相当于函数重载，函数能够依据参数类型指定不同的实现。
- Subtype Polymorphism 名字指定公用超类的不同子类的实例。
- Row Polymorphism/Duck Typing 简单地说，如果某个东西叫得像鸭子，走路又和鸭子一样，那么就可以认为是鸭子。

如果按多态发生的时间来划分，又可以分为：

- Static Polymorphism 静多态发生在编译期，静多态牺牲灵活性获取性能，参数化多态和 Ad-hoc 一般是静多态。
- Dynamic Polymorphism 动多态发生在运行时，动多态牺牲性能获取灵活性，子类型多态一般是动多态。

Rust 语言的类型系统类似 Duck Typing，同时支持静多态和动多态，静多态就是一种零成本抽象。

Rust 引以为傲的是复合类型的零成本抽象，例如 struct A，编译完之后运行时不占用任何内存，不过是在编译期间做了特殊处理而已。

Rust 的类型系统基本囊括了编程中会遇到的各种情况，一般情况下不会有未定义的行为出现，所以说，Rsut 是类型安全的语言。


除了前面展示直接给结构体实现扩展方法，Rust 还提供了 Trait 扩展机制为各类型定义公共行为方法，并且可以为对象实现多个 Traits，所以 Trait 更像是一个接口。

因为这样的类型机制，Rust API 参考文档也是按以下几种基本结构组织的：

- `Implementations` 类型直接实现的方法。
- `Traits Implementations` 是核心部分：定义了类型的公共行为方法，这些方法值得投入一些额外的学习时间。
- `Blanket Implementations` 是基础部分，由 Rust 基础库批量覆盖实现的 Traits 方法。
- `Auto Trait Implementations` 是基础部分，由 Rust 基础库批量覆盖实现的 Traits 方法。

使用 Traits 扩展类型的方法只需要两个步骤：

- Define Trait Objects
- Implements Trait fro Types

Trait 可以继承，如下，FooBar 的实现者也要同时实现 Foo 和 Bar：

```rust,ignore
trait Foo {
    fn foo(&self);
}

trait Bar {
    fn bar(&self);
}

trait FooBar : Foo + Bar {
    fn foobar(&self);
}

struct Fb;

impl Foo for Fb {
    fn foo(&self) { println!("foo"); }
}

impl Bar for Fb {
    fn bar(&self) { println!("bar"); }
}

impl FooBar for Fb {
    fn foobar(&self) { println!("foobar"); }
}

let fb = Fb{};
fb.foo();
fb.bar();
fb.foobar();
```

以上代码，也演示了如何使用 Trait 按 Dock Typing 方式来实现类型扩展，实现 FooBar 的 Fb 既是 Foo 类型又是 Bar 类型。

这里所指的继承不是很恰当，应该是一种行为共享或者约束，即实现了某个 trait 也某种共同的行为。


### 🟢🔵 Dynamic vs Static Dispatch
- https://doc.rust-lang.org/stable/std/keyword.dyn.html
- https://doc.rust-lang.org/stable/book/ch17-02-trait-objects.html
- https://wiki.jikexueyuan.com/project/rust-1.7/trait-objects.html
- https://doc.rust-lang.org/book/ch19-04-advanced-types.html#dynamically-sized-types-and-the-sized-trait
- https://doc.rust-lang.org/reference/types/trait-object.html
- trait object https://zhuanlan.zhihu.com/p/23791817

注意，这里讨论的 Trait 对象不是用 `trait` 关键字定义的对象，而类似以下这样结构的对象：

```rust,ignore
pub struct TraitObject {
    pub data: *mut (),
    pub vtable: *mut (),
}
```

所谓 trait 对象，可以理解为其它面向对象语言中指向接口或基类的指针或引用，指向基类的指针在运行时确定其实际类型。Rust 没有类继承，通过 trait 对象保存的指针或引用起到类似的效果，运行时被确定具体类型。

应用中，可以这样理解，指向 trait 的指针就是 Trait Object，假如 Bird 是一个 trait 的名称，那么智能指针 `Box<Bird>` 和 `&dyn Bird`，旧语法表达为 `&Bird`，它们都是一种 Trait Object。

因为 Trait 是 DST - dynamically sized types，它的指针就需要用胖指针来记录地址和长度信息，可以通过以下代码查看与普通指针的区别：

```rust,ignore
use std::mem::size_of;
dbg!(size_of::<&Duck>());       // 8
dbg!(size_of::<&dyn Bird>());   // 16
```

当使用 Trait Object，Rust 就必需使用 `dynamic dispatch`，因为编译器无法在编译期得知究竟为多少类型使用了 Trait Object。这样，Rust 在 Trait Object 内保存一个指针，在运行时用它来指向要调用的方法。在动态派发方式中，编译器生成的代码会在运行时解决应该调用哪个方法，这就比静态派发多了一个运行时的计算消耗。

和动态派发对立的就是 `static dispatch`，在泛型章节内容中，解析了 Rust 编译器会在编译期进行 monomorphization 处理。即那些绑定泛型的 Traits 方法会在编译期单体化为具体类型，和泛型相反方向的处理过程。编译结果就是调用方法是静态派发的，在编译期就决定了。而动态派发还会阻止那此静态派发的优化工作，如静态派发中会将一些函数进行内联 inline 而省略函数调用的消耗。

Rust 最新规范中，impl Trait 和 dyn Trait 分别对应静态分发和动态分发机制的实现语法。

来辨析一下这两个关键字：

- `impl` 用于为类型实现功能函数，也可以用于声明参数、返回值为实现某 Trait 的类型；
- `dyn` 用于突出声明对于关联的 Trait 的方法调用是 Dynamic Dispatch，要使用 `dyn some_trait` 这种方式，要求 some_trait 必需是对象安全的；

与泛型参数或 `impl some_trait` 不同，编译器不知道 `dyn some_trait` 要传递的具体类型，也就是说，类型已被清除。因此，`dyn some_trait`引用包含两个指针，一个指向数据（例如，结构的实例），另一个指向一个保存方法调用名的映射，即称为虚拟方法表或 vtable 的对象。

在运行时，当需要对 `dyn some_trait` 调用一个方法时，查询 vtable 以获取函数指针，然后调用该函数指针。这也就是说 `dyn some_trait` 方式需要消耗运行时的资源来完成一些动态调用工作。相比 `impl some_trait` 与泛型参数方式，可以在编译期确定，生成对应的各种调用版本，并可以作为内联形式编译，因此具有更好的性能。

但是，`dyn some_trait` 因为不在编译期生成各种调用的静态代码，所以它产生更少的编译代码。 


如果一个 Trait 对象是对象安全的，需要满足一些条件，实践中它的所有方法定义只需要满足以下两个性质：

- The return type isn't `Self`.
- There are no generic type parameters.

按这两条性质，那么包含常用的 clone() 方法的 Trait 就不是对象安全的：

```rust,ignore
pub trait Clone {
    fn clone(&self) -> Self;
}
```

对于给定的一个 Trait 对象，名字假定为 SomeTrait，那么以下表达式都是 Trait 对象：

- dyn SomeTrait
- dyn SomeTrait + Send
- dyn SomeTrait + Send + Sync
- dyn SomeTrait + 'static
- dyn SomeTrait + Send + 'static
- dyn SomeTrait +
- dyn 'static + SomeTrait.
- dyn (SomeTrait)

关键字 `dyn` 是可选的，只是表示 Dynamic dispatch，即在运行时进行方法派发调用，对应的静态派发方式是 `impl`。 

- ImplTraitType : impl TypeParamBounds
- ImplTraitTypeOneBound : impl TraitBound

而 trait 本身不是固定大小的类型，不能在编译阶段确定大小。不同的类型都可以实现同一个 trait，满足同一个 trait 的类型可能具有不同的大小。因此，不能直接使用 trait 当作实例变量、参数、返回值。

假设有以下的 trait Bird，还另外有两个类型都实现了这个 trait：

```rust,ignore
trait Bird {
  fn fly(&self);
}

struct Duck;
struct Swan;

impl Bird for Duck {
  fn fly(&self) { println!("duck fly..."); }
}

impl Bird for Swan {
  fn fly(&self) { println!("swan fly...");}
}
```

总之 Trait Object 是一种 DST 类型，并不是一种具体类型，它的大小在编译阶段不固定，这也是 trait 跟其它语言中的 interface 的一个区别。

这意味着不能用在参数类型、或返回值类型的声明中，像下面的代码是不能通过编译的：

```rust,ignore
fn test(arg: Bird) {}
fn test() -> Bird  {}
```

可以换一种方式，声明为实现了 Bird 的类型：

```rust,ignore
fn test(arg: &dyn Bird) {}
fn test(arg: impl Bird) {}
fn test() -> impl Bird  { Duck{} }
```

或者使用泛型参数达到类似的效果：

```rust,ignore
fn test<T: Bird>(arg: T) {
    arg.fly();
}
test(Duck{});
```

以上实现实际上，编译器会进行 monomorphization 处理，根据实际调用参数的类型单体化，直接生成不同的函数版本，类似 C++ 的 template 一样：

    // 伪代码示意
    fn test_Duck(arg: Duck) { arg.fly(); }
    fn test_Swan(arg: Swan) { arg.fly(); }


```rust,ignore
// Define a Trait Object
pub trait Draw {
    fn draw(&self);
}

#[derive(Debug)]
pub struct Button {
    pub width: u32,
    pub height: u32,
    pub label: String,
}

// Implementing the Trait
impl Draw for Button {
    fn draw(&self) {
        // code to actually draw a button
        println!("{:?}", btn);
    }
}

struct SelectBox {
    width: u32,
    height: u32,
    options: Vec<String>,
}

impl Draw for SelectBox {
    fn draw(&self) {
        // code to actually draw a select box
        println!("{:?}", btn);
    }
}

fn main() {
    // use trait methods
    let btn = Button{ 
        width: 10, 
        height:8, 
        label: String::from("Go") 
    };
    btn.draw();
}
```

### 🟢🔵 Blog Demo
- The Rust Programming Language - 17.3 Implementing an Object-Oriented Design Pattern https://doc.rust-lang.org/book/ch17-03-oo-design-patterns.html

在官方文档 Implementing an Object-Oriented Design Pattern 中，分别只用结构体、结构体结合 Trait 两种方式实现 State Pattern 编程模式，很好演示了 Rust 的类型系统工作原理。

状态模式 State Pattern 是一种面向对象的设计模式，模式的关键是有内部状态的值，这些状态由一组状态对象表示，并且值的行为根据内部状态而改变。State 对象将一些行为功能共享出来，每个状态对象负责自己的行为，并负责控制何时应更改为另一个状态。而保存状态对象的值本身不知道状态对象的不同行为，或何时在状态之间转换。

在 Rust 中使用 Struct 和 Trait 实现，而不是 C++ 语言那样使用类对象和继承机制。

两种 State Pattern 实现的要点：

- Encoding States and Behavior as Trait
- Encoding States and Behavior as Types

演示的 Blog 案例功能只要求以下几点：

- A blog post starts as an empty draft.
- When the draft is done, a review of the post is requested.
- When the post is approved, it gets published.
- Only published blog posts return content to print, so unapproved posts can’t accidentally be published.

即贴子从开始的草稿状态，经过审核状态再到发布状态，这个过程中，只有在最后发布状态才可以通过 `content()` 方法获取内容。

版本一采用结构体结合 State Trait 的方案实现，这个版本中要点：

- `struct Post` 实现帖子内容设置、`request_review()` `approve()` 状态转换、`content()` 内容获取方法，返回内容取决于状态对象的实现。
- `trait State` 作为状态接口，提供默认的 `content()` 方法返回空字符串，通过 `request_review()` `approve()` 方法以下状态对象。
    - `struct Draft` 实现状态接口，并且不具备直接通过 `approve()` 将帖子设置为发布状态。
    - `struct PendingReview` 实现状态接口，具备直接通过 `approve()` 将帖子设置为发布状态。
    - `struct Published` 实现状态接口，并覆盖实现 `content()` 方法返回帖子内容。

这种设计有一定的灵活性，比如新增一些功能：

- 添加 `reject()` 方法来拒绝状态转换，将状态从 `PendingReview` 回滚为 `Draft`；
- 需要经过两次 approve 才进入 `Published` 状态；
- 只在 `Draft` 状态下才允许用户修改内容；

但是，这个方案中，State 对象和行为能力是统一存放的，从概念上讲，这并不是特别好的逻辑处理，也存在一些重复的代码。假如需要新增一个状态，如 `Scheduled` 就可能要修改现有的一或两个状态对象，这是一种复杂的工作。


版本二仅使用结构体管理状态的方案实现，使用 3 个结构体来对应三种状态，这些结构都有 `content` 数据成员，这个版本中要点：

- `struct Post` 实现 `content()` 方法返回帖子内容，实现 `new()` 方法返回一个 `DraftPost` 对象；
- `struct DraftPost` 实现 `request_review()` 方法返回一个 `PendingReviewPost` 对象；
- `struct PendingReviewPost` 实现 `approve()` 方法返回一个 `Post` 对象；

可以看到这一版本中，用不同的结构体来约束用户的行为，只有相应的结构体对象才具有指定的行为能力，代码参考如下：

```rust,ignore
pub struct Post {
    content: String,
}

pub struct DraftPost {
    content: String,
}

pub struct PendingReviewPost {
    content: String,
}

impl Post {
    pub fn new() -> DraftPost {
        DraftPost {
            content: String::new(),
        }
    }

    pub fn content(&self) -> &str {
        &self.content
    }
}

impl DraftPost {
    pub fn add_text(&mut self, text: &str) {
        self.content.push_str(text);
    }

    pub fn request_review(self) -> PendingReviewPost {
        PendingReviewPost {
            content: self.content,
        }
    }
}

impl PendingReviewPost {
    pub fn approve(self) -> Post {
        Post {
            content: self.content,
        }
    }
}
```

另一版本代码参考，trait State + struct 实现版本：

```rust,ignore
pub struct Post {
    state: Option<Box<dyn State>>,
    content: String,
}

impl Post {
    pub fn new() -> Post {
        Post {
            state: Some(Box::new(Draft {})),
            content: String::new(),
        }
    }

    pub fn add_text(&mut self, text: &str) {
        self.content.push_str(text);
    }

    pub fn content(&self) -> &str {
        self.state.as_ref().unwrap().content(self)
    }

    pub fn request_review(&mut self) {
        if let Some(s) = self.state.take() {
            self.state = Some(s.request_review())
        }
    }

    pub fn approve(&mut self) {
        if let Some(s) = self.state.take() {
            self.state = Some(s.approve())
        }
    }
}

trait State {
    fn request_review(self: Box<Self>) -> Box<dyn State>;
    fn approve(self: Box<Self>) -> Box<dyn State>;

    fn content<'a>(&self, post: &'a Post) -> &'a str {
        ""
    }
}

struct Draft {}

impl State for Draft {
    fn request_review(self: Box<Self>) -> Box<dyn State> {
        Box::new(PendingReview {})
    }

    fn approve(self: Box<Self>) -> Box<dyn State> {
        self
    }
}

struct PendingReview {}

impl State for PendingReview {
    fn request_review(self: Box<Self>) -> Box<dyn State> {
        self
    }

    fn approve(self: Box<Self>) -> Box<dyn State> {
        Box::new(Published {})
    }
}

struct Published {}

impl State for Published {
    fn request_review(self: Box<Self>) -> Box<dyn State> {
        self
    }

    fn approve(self: Box<Self>) -> Box<dyn State> {
        self
    }

    fn content<'a>(&self, post: &'a Post) -> &'a str {
        &post.content
    }
}
```

这一版本中使用了 `Option` 类型还有 `Box` 智能指针来保存状态对象。为了从 `Option` 变量中取出状态对象，使用 `unwrap()` 方法。另外，因为 `Option` 枚举类型有 Some 和 None 两种值，但只有 Some 关联保存了状态对象，需要使用 `take()` 方法从 `state` 成员中取出 Some(state)。

    pub fn content(&self) -> &str {
        self.state.as_ref().unwrap().content(self)
    }

其中 `as_ref()` 方法是 Trait std::convert::AsRef 提供的通用方法，这里表示获取 Option 内部值的引用，而不是其所有权。在 `Option<Box<dyn State>>` 类型上调用返回的值就是 `Option<&Box<dyn State>>`。如果不通过这个方法而直接使用这个内部值，就会导致所有权转移，而其来源是 `&self` 即不可变借用，所以编译器不允许这样做。




### 🟢🔵 Traits 特质扩展
- https://doc.rust-lang.org/stable/std/keyword.trait.html
- https://doc.rust-lang.org/stable/reference/types/trait-object.html
- https://doc.rust-lang.org/stable/reference/types/impl-trait.html
- Rust by Example - Traits https://doc.rust-lang.org/rust-by-example/trait.html
- Traits: Defining Shared Behavior https://doc.rust-lang.org/book/ch10-02-traits.html

官方文档中用一个标题作了明示 Traits: Defining Shared Behavior。

Traits 这个概念在 PHP 中也有，它被用来对各种类型进行功能扩展。Rust 中的 trait 也是做这种工作的，和泛型一样是非常重要的概念，trait 可以翻译为特性、特质等，trait 这个概念承担了多种职责。

和其它语言中的 Interface 抽象类型相比，trait 这个概念有很大不同，更接近 Golang interface 采用的组合方式。

Rust 设计的三大支柱特性：

- 无垃圾回收的安全内存管理 No GC
- 无数据竞争风险的并发 - Data Race
- 零开销的抽象 - Zero-cost Abstraction

Trait 机制是 Rust 实现零开销的抽象这一原则的基石，是 Rust 唯一的接口抽象方式。 

- 一方面，不同种类型可以实现同一 Trait 类型，也可以为已有的类型添加新的 Trait 类型。
- 另一方面，当你想要对某未知类型进行抽象的时候，Trait 可以帮助你确定该类型可以进行的操作。
- Trait 可以静态生成，这与 C++ 模板一致，对不同种类型的抽象静态地生成不同的代码，而抽象本身没有增加负面影响，因而也不会带来任何运行开销。
- Trait 可以动态调用，有时你确实需要在运行时调用某种间接抽象，这时就不能静态实例化该抽象了，因此提供了动态调用（Dynamic Dispatch）的机制。
- Trait 这种简单抽象能够解决大量的额外问题，可以被用于定义扩展方法，对已有类型添加其他方法，因此传统的方法重载不再必要。
- Trait 机制也使得运算符重载更加简单。

Rust 是一种用户可以对内存有精确控制能力的强类型语言，可以自由指定一个变量是在栈里面，还是在堆里面。在局部变量声明、函数参数传递、返回值传递等等地方，都要求这个类型在编译阶段有确定的大小，否则的话，编译器就不知道该如何生成代码。

定义 Traits 可以包含以下三种成员，但就是不能添加其它数据成员：

- functions and methods
- types
- constants

Traits 的相关语法要点：

- `impl SomeTrait for SomeStruct {}` 为结构体实现 SomeTrait；
- `fn foo() -> impl SomeTrait {}` 为函数声明其参数、返回值为实现了 SomeTrait 的类型；
- `fn foo<T: Debug + Clone>(s: T) {}` 表示泛型 T 为同时实现 Debug + Clone，加号用来连接多个 Trait。
- `fn foo<T, K> where T:Debug + Clone, K: Copy (s: T) {}` 泛型 Traits 简化类型表达的 where 从句语法；
- `impl<T: SomeTrait> ToString for T {}` 覆盖实现，blanket implementations，为所有实现 SomeTrait 的类型提供 ToString 实现；
- `impl<T> SomeTrait for T { }` 泛型实现，为所有类型实现 SomeTrait；

像 `T: SomeTrait` 这样的语法结构是旧版本的省略写法，对应完整的表达应该是 `(dyn Trait + 'static)`，因为 Trait 只定义一个接口约束，不是具体类型，

使用 Trait 需要两个步骤：

- Defining a Trait
- Implementing a Trait on a Type

最简单的方法就是使用元数据编程，直接承继系统提供的 Derivable Trait 对象:

- Comparison traits: `Eq`, `PartialEq`, `Ord`, `PartialOrd`.
- `Clone`, to create T from &T via a copy.
- `Copy`, to give a type 'copy semantics' instead of 'move semantics'.
- `Hash`, to compute a hash from &T.
- `Default`, to create an empty instance of a data type.
- `Debug`, to format a value using the `{:?}` formatter.

使用示范：

```rust,ignore
// `Centimeters`, a tuple struct that can be compared
#[derive(PartialEq, PartialOrd)]
struct Centimeters(f64);

// `Inches`, a tuple struct that can be printed
#[derive(Debug)]
struct Inches(i32);

println!("Derivable Debug {:?}", Inches(12));
```

自定义 Trait 对象可以像定义接口一样只给出函数头，可以定义多个方法，当然也可以没有任何方法、常量或类型定义。

也可以给出函数实现，这叫做默认实现，注意花括号后面没有分号：

```rust,ignore
pub trait Summary {
    fn summarize_author(&self) -> String;

    fn summarize(&self) -> String {
        format!("(Read more from {}...)", self.summarize_author())
    }
}
```

然后，为需要使用 Trait 的对象通过 `impl` 关键字来实现它，对于默认实现的 Trait，只需要一对花括号，如 `impl Summary for T {}`。或者提供其它未实现的方法，而省略默认实现的方法。

```rust,ignore
pub struct Tweet {
    pub username: String,
    pub content: String,
    pub reply: bool,
    pub retweet: bool,
}

// use Default Implementation
// impl Summary for Tweet { }

impl Summary for Tweet {
    fn summarize(&self) -> String {
        format!("{}: {}", self.username, self.content)
    }
}

fn main() {
    let tweet = Tweet {
        username: String::from("horse_ebooks"),
        content: String::from(
            "of course, as you probably already know, people",
        ),
        reply: false,
        retweet: false,
    };

    println!("1 new tweet: {}", tweet.summarize());
}
```

所有的 trait 都有一个隐藏的类型 `Self`，代表当前这个实现了此接口的具体类型，也就是这个类型的别名而已。trait 中定义的函数，也称作关联函数(associated function)。函数的第一个参数如果是 Self 相关的类型，且命名为 `self`，这个参数可被称做接收者，即函数调用动作的接收者，函数调用产生的影响由 receiver 接收。这样的函数可以称作方法 method，可以当然变量实例的成员方法使用，即通过小数点来访问这个方法。没有 receiver 参数的函数，我们可以称作静态函数 static function，可以通过类型加双冒号 :: 的方式来调用。在 Rust 中，函数和方法没有本质区别。

trait 中的方法与普通函数一样，可以指定所有参数是值传递、引用传递，包括 self 参数也不特殊。对于 self 参数只能用在第一个参数的位置，可以是：

- self : Self       简化写法 self
- self : mut Self   简化写法 mut self
- self : &Self      简化写法 &self
- self : &mut Self  简化写法 &mut self

可以将 Trait 类型作为参数传递，可以使用 impl Trait 语法，也可以使用 Trait 绑定语法，它们是等价的：

```rust,ignore
// Traits as Parameters - syntax sugar of bound syntax
// impl Trait syntax
pub fn notify(item: &impl Summary) {
    println!("Breaking news! {}", item.summarize());
}

// Trait Bound Syntax
pub fn notify<T: Summary>(item: &T) {
    println!("Breaking news! {}", item.summarize());
}
```

Bound 这个称谓可以翻译作为捆绑或绑定都可以，这很贴合语法的含义，翻译机器直接解析为约束，这个实在不恰当。

如果实现多个 Trait，可以使用 + 连接，并且可以使用更清晰的 where Clauses：

```rust,ignore
// Multiple Trait Bounds with the + Syntax
pub fn notify(item: &(impl Summary + Display)) { ... }
pub fn notify<T: Summary + Display>(item: &T) { ... }

// Clearer Trait Bounds with where Clauses
fn some_function<T, U>(t: &T, u: &U) -> i32
    where T: Display + Clone,
          U: Clone + Debug
{ ... }
```

函数也可以返回 Trait 类型，Returning Types that Implement Traits，注意，函数只能返回同一个类型，而不可以返回多个类型：

```rust,ignore
fn returns_summarizable() -> impl Summary {
    Tweet {
        username: String::from("horse_ebooks"),
        content: String::from(
            "of course, as you probably already know, people",
        ),
        reply: false,
        retweet: false,
    }
}
```

Traits 还有一种覆盖实现，即一揽子实现 blanket implementations，就为已经实现某种 Trait 的类型实现另一种 Trait，这在 Rust 标准库中广泛使用。

例如，标准库中基本都实现了 Display Trait，并且通过以下方式为所有实现 Display 的类型实现 ToString。就这样，所有可以执行 Display 打印信息的类型都有 `to_string()` 方法。

```rust,ignore
#![allow(unused)]
impl<T: Display> ToString for T {
    // --snip--
}

fn main() {
    let s = 3.to_string();
}
```

为结构体提供按条件实现，Rust 系统中的 Traits 提供的这种能力，真的很 AOP - Aspect-oriented programming。


### 🟢🔵 Drop & Copy Trait
- https://doc.rust-lang.org/std/ops/trait.Drop.html
- https://doc.rust-lang.org/std/marker/trait.Copy.html
- https://doc.rust-lang.org/stable/std/boxed/struct.Box.html
- Smart Pointers https://doc.rust-lang.org/book/ch15-00-smart-pointers.html

在 Ownership 章节的内容中，讨论了 Rust 程序中的对象有两种很基本的行为：

- Drop 引用或变量离开作用域时，即生命周期结束时执行 `drop()` 进行清理；
- Copy 对象赋值时产生的深度复制行为。

参考如下代码：

```rust,ignore
let s1 = String::from("hello");
let s2 = s1;
println!("s1: {}", s1);
```

因为 String 类型没有实现 Copy Trait 方法，所以赋值即意味着所有权的移动，发生在给 `s2` 赋值的语句上，转移了所有权后 `s1` 就失活不能再使用了。

所以编译时错误提示，`s1` 赋值过程中因为没有 Copy trait 会引起所有权移动，所以它相同生命周期结束，不能用于打印信息。

Copy and Drop are exclusive 两者不可同时实现，如果实现了 Drop 就表示它在赋值时必需转移所有权或出借所有权。

Copy 与 Clone 是有区别的：

- Copy 是赋值符号中出现的隐式操作，总是执行简单的 bit-wise 拷贝，并且不可以重载，可以看到后面实现 Copy 时使用的是 { }。
- Clone 是显式执行数据的复制操作，可以根据需要重载 `clone()` 这个过程。

可以实现 Copy 的类型要求期子成员也必需实现 Copy。

有些类型是不可以实现的 Copy 的，如 `&mut T` 执行拷贝后就有两个可变引用，这是 Rust 编译器不允许的行为。`String` 类型也类似，因为拷贝它就表示有两个指向同一字符串 buffer 的引用，在释放资源时就会出现 double free 问题。所以，那么实现了 Drop 的类型本身就表示有关联的数据需要在结束时清理，直接执行 Copy 是危险行为，应该根据需要重载 `clone()` 方法。

实现 Copy Trait 最简单的方式是使用元数据编程，直接 derive 系统提供的默认实现，也可以手册实现。

现在，通过实现 Copy Trait 来修正前面代码片段中遇到的问题：

```rust,ignore
// #[derive(Debug, Copy, Clone)]
// struct S<'a>(&'a str);

#[derive(Debug)]
struct S(&'static str);

impl Copy for S { }

impl Clone for S {
    fn clone(&self) -> S {
        *self
    }
}

fn main() {
    let s1 = S("hello");
    let s2 = s1;
    println!("s1: {:?}", s1);
}
```

因为 `pub trait Copy: Clone` 所以需要一并实现 Clone。

其它已经实现 Copy 的类型如下：

- Function item types (i.e., the distinct types defined for each function)
- Function pointer types (e.g., fn() -> i32)
- Array types, for all sizes, if the item type also implements Copy (e.g., [i32; 123456])
- Tuple types, if each component also implements Copy (e.g., (), (i32, bool))
- Closure 如果没有从环境中捕获任何值，或者所有这些捕获的值都实现了 Copy 本身。

请注意，共享引用捕获的变量始终实现 Copy 即使被引用方没有，而可变引用捕获的变量从不实现 Copy。


按以下原型实现 std::ops::Drop Trait 可以在对象生命周期结束时执行资源清理工作。

    pub trait Drop {
        pub fn drop(&mut self);
    }

Drop::drop 是不允许手动调用，需要提前释放资源，比如写入文件完成后，需要立马 close 可以通过 `std::mem::drop()` 函数来释放。

结合 Box 智能指针示范 Drop 实现：

```rust,ignore
use std::mem::drop;

struct Foo(Box<i32>);

impl Foo {
    fn destroy(self){
        drop(self);
    }
}
impl Drop for Foo {
    fn drop(&mut self) {
        let Foo(v) = self;
        println!("Leave scope and object destroyed!")
    } // leave scope
}

// unit struct
struct Bar;

impl Drop for Bar {
    fn drop(&mut self) {
        println!("Dropping Bar!")
    }
}

fn main() {
    {
        let _foo = Foo(Box::new(1));
        let _bar = Bar;
    }
    println!("after lifetime 'a.")

}
```

输出，可以看到 drop() 调用的顺序是从最后一个失效的对象开始执行的：

    Dropping Bar!
    Leave scope and object destroyed!
    after lifetime 'a.




### 🟢🔵 Operator Overloading
- https://doc.rust-lang.org/rust-by-example/trait/ops.html
- https://doc.rust-lang.org/stable/core/ops/trait.Add.html
- https://doc.rust-lang.org/stable/std/ops/index.html#traits

以下示范通过实现 `std::ops::Add` 来重载 + 运算符，其它运算符号参考标准库文档：

```rust,ignore
use std::ops;

struct Foo;
struct Bar;

#[derive(Debug)]
struct FooBar;

#[derive(Debug)]
struct BarFoo;

// The `std::ops::Add` trait is used to specify the functionality of `+`.
// Here, we make `Add<Bar>` - the trait for addition with a RHS of type `Bar`.
// The following block implements the operation: Foo + Bar = FooBar
impl ops::Add<Bar> for Foo {
    type Output = FooBar;

    fn add(self, _rhs: Bar) -> FooBar {
        println!("> Foo.add(Bar) was called");

        FooBar
    }
}

// By reversing the types, we end up implementing non-commutative addition.
// Here, we make `Add<Foo>` - the trait for addition with a RHS of type `Foo`.
// This block implements the operation: Bar + Foo = BarFoo
impl ops::Add<Foo> for Bar {
    type Output = BarFoo;

    fn add(self, _rhs: Foo) -> BarFoo {
        println!("> Bar.add(Foo) was called");

        BarFoo
    }
}

fn main() {
    println!("Foo + Bar = {:?}", Foo + Bar);
    println!("Bar + Foo = {:?}", Bar + Foo);
}
```

泛型重载的实现：

```rust,ignore
use std::ops::Add;

#[derive(Debug, Copy, Clone, PartialEq)]
struct Point<T> {
    x: T,
    y: T,
}

// Notice that the implementation uses the associated type `Output`.
impl<T: Add<Output = T>> Add for Point<T> {
    type Output = Self;

    fn add(self, other: Self) -> Self::Output {
        Self {
            x: self.x + other.x,
            y: self.y + other.y,
        }
    }
}

assert_eq!(Point { x: 1, y: 0 } + Point { x: 2, y: 3 },
           Point { x: 3, y: 3 });
```

当你为某类型实现某 trait 的时候，必须要求类型或者 trait 至少有一个是在同一 crate 中定义的，即不能为第三方的类型实现第三方的 trait。 

这一点是很直观的，这避免入侵式代码对第三方模块的破坏，有些资料把这个约束称为孤儿规则 Orphan rule。

```rust,ignore
use std::ops::Add;
// only traits defined in the current crate can be implemented for arbitrary types
// impl doesn't use only types from inside the current crate
impl Add<i32> for bool {
    type Output = bool;
    fn add(self, other: i32) -> Self::Output {
        other
    }
}
```

以上代码编译会出错，编译器提示：

    error[E0117]: only traits defined in the current crate can be implemented for arbitrary types  
     --> src\main.rs:4:1
      |
    4 | impl Add<i32> for bool {
      | ^^^^^--------^^^^^----
      | |    |            |
      | |    |            `bool` is not defined in the current crate
      | |    `i32` is not defined in the current crate
      | impl doesn't use only types from inside the current crate
      |
      = note: define and implement a trait or new type instead

例如，为原始类型实现一个求面积的方法：

```rust,ignore
trait HasArea {
    fn area(&self) -> f64;
}

impl HasArea for i32 {
    fn area(&self) -> f64 {
        *self as f64
    }
}

println!("{}",5.area());
```

另一个例子：

```rust,ignore
trait Add<Rhs=Self> {
    type Output;

    fn add(self, rhs: Rhs) -> &'static str;
}

impl Add<Self> for bool {
    type Output = bool;
    fn add(self, other: Self) -> &'static str {
        if self && other { "TT" } else { "FF" } 
    }
}
println!("Boolean + {}", true.add( true));
```



### 🟢🔵 Iterator 迭代器
- https://doc.rust-lang.org/std/iter/index.html
- https://doc.rust-lang.org/rust-by-example/trait/iter.html
- Processing a Series of Items with Iterators https://doc.rust-lang.org/book/ch13-02-iterators.html
- Comparing Performance: Loops vs. Iterators https://doc.rust-lang.org/book/ch13-04-performance.html

Iterator 定义本身是简单的，只有一个 `next()` 方法：

```rust,ignore
trait Iterator {
    type Item;
    fn next(&mut self) -> Option<Self::Item>;
}
```

调用 `next()` 方法返回一个 `Option<Item>` 类型值，只要有数据就返回 `Some(Item)`，否则返回 `None` 表示已经迭代完成。

以下是和集合配合使用的一些常用的方法：

- `map()` 映射为一个新的迭代器，如 `iter.map(|x| x*2)`；
- `fold()` 类似 reduce 方法，如 `iter.fold(0, |a, b| a+b)`；
- `skip(n)` 跳过指定数量的元素；
- `take(n)` 拿掉指定数量的元素；
- `rev()` 反转迭代器顺序；


实现一个计数用的迭代器：

```rust,ignore
struct Counter { count: usize, }

impl Counter {
    fn new() -> Counter {
        Counter { count: 0 }
    }
}

impl Iterator for Counter {
    type Item = usize;

    // next() is the only required method
    fn next(&mut self) -> Option<Self::Item> {
        self.count += 1;

        if self.count < 6 {
            Some(self.count)
        } else {
            None
        }
    }
}

let mut counter = Counter::new();

assert_eq!(counter.next(), Some(1));
assert_eq!(counter.next(), Some(2));
assert_eq!(counter.next(), Some(3));
assert_eq!(counter.next(), Some(4));
assert_eq!(counter.next(), Some(5));
assert_eq!(counter.next(), None);
for (index, value) in counter.enumerate() {
    println!("#{}: {}", index, value);
}
```

The three forms of iteration

- `iter()`, which iterates over `&T`.
- `iter_mut()`, which iterates over `&mut T`.
- `into_iter()`, which iterates over `T`.

以下示范通过引用、可变引用的方式迭代：

```rust,ignore
let mut values = vec![41];
for x in values.iter_mut() {
    *x += 1;
}
for x in values.iter() {
    assert_eq!(*x, 42);
}
assert_eq!(values.len(), 1);
```

以下是 `into_iter()` 方式的简化使用方式：

```rust,ignore
let values = vec![1, 2, 3, 4, 5];

for x in values {
    println!("{}", x);
}
```
其中 `vec!` 这个宏可像使用数组一样创建一个 Vec 向量列表。

等价的去语法糖版本如下，结合了 match 模式匹配：

```rust,ignore
let values = vec![1, 2, 3, 4, 5];
{
    match IntoIterator::into_iter(values) {
        mut iter => loop {
            let val;
            match iter.next() {
                Some(next) => val = next,
                None => break,
            };
            let () = { println!("{}", val); };
        },
    };
}
```

采用且又返回 `Iterator` 的函数称为迭起器适配器，iterator adapters，常用的有 `map()`, `take()`, `filter()`。

```rust,ignore
let vec1 = vec![1, 2, 3];
let vec2 = vec![4, 5, 6];

// `iter()` for vecs yields `&i32`. Destructure to `i32`.
println!("2 in vec1: {}", vec1.iter().any(|&x| x == 2));
// `into_iter()` for vecs yields `i32`. No destructuring required.
println!("2 in vec2: {}", vec2.into_iter().any(| x| x == 2));

// println!("Find 2 in vec1: {:?}", vec1.iter()     .find(|&&x| x == 2));
// println!("Find 2 in vec2: {:?}", vec2.into_iter().find(| &x| x == 2));
```

迭代器是 lazy 的，即创建一个迭代器并不会执行什么，除非你执行 `next()` 这样的数据消费方法，或者 `sum()` `fold()` 这些调用了 `next()` 的方法。

以下代码调用了一次 `next()` 所以 map 传入的 closure 函数只执行一次：

```rust,ignore
let v = vec![1, 2, 3, 4, 5];
v.iter().map(|x| println!("{}", x)).next();
for x in &v {
    println!("=>{}", x);
}
```

对 Range 进行迭代：

```rust,ignore
let numbers = 0..;
let five_numbers = numbers.take(5);
// let five_numbers = 0..=4;
for number in five_numbers {
    println!("{}", number);
}
```

### 🟢🔵 Generic Types
- https://doc.rust-lang.org/book/ch10-00-generics.html
- https://rustc-dev-guide.rust-lang.org/backend/monomorph.html
- https://doc.rust-lang.org/rust-by-example/generics.html

所以高级语言都有用来解决重复代码的工具，泛型是常用的工具，Rust 也用它。

总结一下泛型的使用方式：

- 泛型函数 `fn genericFun<T>(arg: SomeType<T>) {}`
- 泛型实现 `impl<T>` 按泛型实现对象的方法扩展。
- 泛型 Traits `trait GenericeTrait<T>{...}`

例如，定义一个泛型的结构体：

```rust,ignore
struct Point<T> {
    x: T,
    y: T,
}

fn main() {
    let integer = Point { x: 5, y: 10 };
    let float = Point { x: 1.0, y: 4.0 };
}
```

如果，需要多个泛型参数，在尖括号中添加即可，如下：

```rust,ignore
struct Point<T, U> {
    x: T,
    y: U,
}

let also_work = Point { x: 5, y: 4.0 };
```

泛型的枚举类型定义，也可以多个泛型参数：

```rust,ignore
enum Option<T> {
    Some(T),
    None,
}

enum Result<T, E> {
    Ok(T),
    Err(E),
}
```

现在，假设要实现一个函数，它可以返回一组数的最大那个，只需要实现一个函数就可以解决这个问题。

当需要变了，需要对整数列表、浮点数列表还有字符串列表进行处理，返回其中最大的一个。如果按传统方式，可能需要定义三个逻辑基本一致的函数，这就出现了大量的代码重复。

通过泛型工具可以有效地解决这样的功能重复代码，只需要实现一个泛型函数，接收一个泛型列表，再用相同的功能逻辑代码进行处理返回结果。

泛型工具的语法上只是在原有的名称后面增加箭括号，用于传入泛型工具所需要的参数，在这里可以将泛型函数看作是一个函数工厂，它会根据调用的参数类型生产出相应的函数。

```rust,ignore
fn largest<T>(list: &[T]) -> &T {
    let mut largest = &list[0];
    for elem in list {
        // error[E0369]: binary operation `>` cannot be applied to type `&T`
        if elem > largest {
            largest = elem;
        }
    }
    largest
}

fn main() {
    let number_list = vec![34, 50, 25, 100, 65];
    let result = largest(&number_list);
    println!("The largest number is {}", result);

    let char_list = vec!['y', 'm', 'a', 'q'];
    let result = largest(&char_list);
    println!("The largest char is {}", result);
}
```

可是，以上的函数中，比较大小的符号不能通过编译。

泛型接收了多种类型，那么就需要对原有代码作适当调整，毕竟不是所有类型都可以做同样的操作。对于这个例子而言，涉及了两个值的比较，就可能需要进行一些扩展，Trait 就是做这个工作的。

到这里，需要先学习 10. Generic Types, Traits, and Lifetimes 章节的内容，因此修复以上错误只需要一点点 Traits 的基础。

那就是为泛型函数参数提供 std::cmp::PartialOrd 和 Copy

```rust,ignore
fn largest<T: PartialOrd + Copy>(list: &[T]) -> T {
    let mut largest = list[0];

    for &item in list {
        if item > largest {
            largest = item;
        }
    }

    largest
}
```

Rust 泛型并不会使程序运行变慢，通过编译期的单体化，Monomorphization，将泛型转变为具体类型，也是泛型化的逆向操作。这种在编译期就可以确定的调用，称为 static dispatch。与之相对的是 dynamic dispatch，即不能在编译期确定的调用，需要在运行时确定。

以下示范 `impl<T>` 泛型实现：

```rust,ignore
struct GenVal<T> {
    gen_val: T,
}

impl<T> GenVal<T> {
    fn value(&self) -> &T {
        &self.gen_val
    }
}

fn main() {
    let x = GenVal { gen_val: 3i32 };
    let y = GenVal { gen_val: "3i32" };

    println!("{}, {}", x.value(), y.value());
}
```

当然，也可以指定参数实现以上的结构体，只实现单体化版本，如 `impl GenVal<&str> {}`。


示范实现一个具有清理功能的 `Empty`：

```rust,ignore
struct Empty;
struct Null;

// A trait generic over `T`.
trait DoubleDrop<T> {
    fn drop(self, _: T);
}

// Implement `DoubleDrop<T>` for any generic parameter `T` and caller `U`.
impl<T, U> DoubleDrop<T> for U {
    // This method takes ownership of both passed arguments,
    // deallocating both.
    fn drop(self, _: T) {}
}

fn main() {
    let empty = Empty;
    let null  = Null;

    // Deallocate `empty` and `null`.
    empty.drop(null);

    //empty;
    //null;
    // ^ TODO: Try uncommenting these lines.
}
```

注意，`drop()` 方法，参数没有使用引用，它们会在调用时发生所有权转移到函数内部，并随着函数线束而被清理。





## ⚡ Patterns & Match 模式匹配
- https://doc.rust-lang.org/book/ch06-02-match.html
- Pattern Matching https://cheats.rs/#pattern-matching
- https://doc.rust-lang.org/rust-by-example/flow_control/match.html
- https://doc.rust-lang.org/stable/reference/expressions/match-expr.html
- https://doc.rust-lang.org/stable/rust-by-example/flow_control/match.html
- Patterns and Matching https://doc.rust-lang.org/book/ch18-00-patterns.html
- https://doc.rust-lang.org/stable/std/keyword.ref.html

模式匹配是比较新奇的语法结构，Erlang 这样的语言中大量采用。

模式匹配可以结合 match 来进行流程控制，也可以结合 let 语句完成变量的解构。

总的来说，有三类模式匹配：

- Destructuring 对结构体、元组、枚举等待组合类型解构，以获得其中的成员或元素值；
- Guards 使用 if 条件匹配；
- Binding 使用 `@` 绑定具体值；

Pattern Matching 使用快速参考：

- `a | b` 多条目匹配操作符；
- `_` 或 `..` 省略匹配，匹配所有未指定的条目；
- `ref some` 使用 `ref` 关键字匹配创建一个引用，`ref mut` 创建一个可变引用，和 `&` 引用操作符号区别开来；
- `(z @ 1, _)` 以绑定模式匹配一个元组化，并且第一值为 1，忽略第二个值。`@` 字符可以用来指定一个值，一个 Range 等；
- `Struct(z @ 1, _)` 以绑定模式匹配一个元组化结构体，并且第一值为 1，忽略第二个值；
- `Some(x) if x < 10 => ...` Match guards 即使用条件的匹配；

& vs ref

- `&` 表示需要一个引用；
- `ref` 表示在模式匹配中将引用解包出来；

```rust,ignore
fn main() {
    let number = 13;
    println!("Tell me about {}", number);
    match number {
        // Match a single value
        1 => println!("One!"),
        // Match several values
        2 | 3 | 5 | 7 | 13 => println!("This is a prime"),
        // Match an inclusive range
        13..=19 => println!("A teen"),
        // Handle the rest of cases
        _ => println!("Ain't special"),
        // TODO ^ Try commenting out this catch-all arm
    }

    let boolean = true;
    // Match is an expression too
    let binary = match boolean {
        // The arms of a match must cover all the possible values
        false => 0,
        true => 1,
        // TODO ^ Try commenting out one of these arms
    };
    println!("{} -> {}", boolean, binary);
}
```

Match guards 即给模式匹配添加条件：

```rust,ignore
let message = match maybe_digit {
    Some(x) if x < 10 => process_digit(x),
    Some(x) => process_other(x),
    None => panic!(),
};
```

注意下划线的使用，`_x` 这样的变量命名让人看起来好像会忽略绑定，其实不是：

```rust,ignore
let s = Some(String::from("Hello!"));

if let Some(_s) = s {
        //   -- value moved here
    println!("found a string");
}

// println!("{:?}", s);
//                  ^ value borrowed here after partial move
```

更多的模式匹配示范，如 Range 匹配：

```rust,ignore
let x = 9;
let message = match x {
    0 | 1  => "not many",
    2 ..= 9 => "a few",
    _      => "lots"
};

let x = 'c';

match x {
    'a'..='j' => println!("early ASCII letter"),
    'k'..='z' => println!("late ASCII letter"),
    _ => println!("something else"),
}

assert_eq!(message, "a few");

// Demonstration of pattern match order.
struct S(i32, i32);

match S(1, 2) {
    S(z @ 1, _) | S(_, z @ 2) => assert_eq!(z, 1),
    _ => panic!(),
}
```

在循环中使用模式匹配：

```rust,ignore
let v = vec!['a', 'b', 'c'];

for (index, value) in v.iter().enumerate() {
    println!("{} is at index {}", value, index);
}
```

更多关于结构体匹配的参考：

```rust,ignore
struct Foo {
    x: (u32, u32),
    y: u32,
}

// Try changing the values in the struct to see what happens
let foo = Foo { x: (1, 2), y: 3 };

match foo {
    Foo { x: (1, b), y } => println!("First of x is 1, b = {},  y = {} ", b, y),

    // you can destructure structs and rename the variables,
    // the order is not important
    Foo { y: 2, x: i } => println!("y is 2, i = {:?}", i),

    // and you can also ignore some variables:
    Foo { y, .. } => println!("y = {}, we don't care about x", y),
    // this will give an error: pattern does not mention field `x`
    //Foo { y } => println!("y = {}", y),
}
```


除了使用 `match` 关键字使用模式匹配控制流程外，还有 let 语句的模式匹配，参考如下：

- `match m {}`  Initiate pattern matching, then use match arms, c. next list.
- `let S(x) = get();`   Notably, let also destructures similar to the table below.
    - `let S { x } = s;`    Only x will be bound to value s.x.
    - `let (_, b, _) = abc;`    Only b will be bound to value abc.1.
    - `let (a, ..) = abc;`  Ignoring 'the rest' also works.
    - `let (.., a, b) = (1, 2);`    Specific bindings take precedence over 'the rest', here a is 1, b is 2.
    - `let Some(x) = get();`    Won't work 🛑 if pattern can be refuted, use if let instead.
- `if let Some(x) = get() {}`   Branch if pattern can be assigned (e.g., enum variant), syntactic sugar. *
    - Desugars to `match get() { Some(x) => {}, _ => () }`
- `fn f(S { x }: S)`    Function parameters also work like let, here x bound to s.x of f(s).


以下解析 `match m {}` 的匹配分支，它们同样可以用于 let 语句的模式匹配：

- `E::A => {}`  Match enum variant A, c. pattern matching.
- `E::B ( .. ) => {}`   Match enum tuple variant B, wildcard any index.
- `E::C { .. } => {}`   Match enum struct variant C, wildcard any field.
- `S { x: 0, y: 1 } => {}`  Match struct with specific values (only accepts s with s.x of 0 and s.y of 1).
- `S { x: a, y: b } => {}`  Match struct with any(!) values and bind s.x to a and s.y to b.
    - `S { x, y } => {}`    Same, but shorthand with s.x and s.y bound as x and y respectively.
- `S { .. } => {}`  Match struct with any values.
- `D => {}` Match enum variant E::D if D in use.
- `D => {}` Match anything, bind D; possibly false friend 🛑 of E::D if D not in use.
- `_ => {}` Proper wildcard that matches anything / "all the rest".
- `(a, 0) => {}`    Match tuple with any value for a and 0 for second.
- `[a, 0] => {}`    Slice pattern, match array with any value for a and 0 for second.
    - `[1, ..] => {}`   Match array starting with 1, any value for rest; subslice pattern. ?
    - `[1, .., 5] => {}`    Match array starting with 1, ending with 5.
    - `[1, x @ .., 5] => {}`    Same, but also bind x to slice representing middle (c. next entry).
- `x @ 1..=5 => {}` Bind matched to x; pattern binding, here x would be 1, 2, … or 5.
- `0 | 1 => {}` Pattern alternatives (or-patterns).
    - `E::A | E::Z` Same, but on enum variants.
    - `E::C {x} | E::D {x}` Same, but bind x if all variants have it.
- `S { x } if x > 10 => {}` Pattern match guards, condition must be true as well to match.

看到有人问这样的表达 `match <|>a`，没见过。


模式匹配也会有不可用的情况：

```rust,ignore
enum Void {}

let res: Result<u32, Void> = Ok(0);

// Err doesn't exist anymore, so Ok is actually irrefutable.
let Ok(num) = res;
```

因为 Ok(num) 并不包含 `Result<u32, Void>` 类型的另一个值 Err，没有完整覆盖可能的值，这种情况称为 refutable pattern，而 let 语句不接受这样的模式匹配。

解决方法是使用 if let 语句：

```rust,ignore
if let Ok(x) = res {
    println!("{}", x);
}
```


## ⚡ Enums 枚举类型
- https://doc.rust-lang.org/book/ch06-00-enums.html
- https://rust-lang.github.io/unsafe-code-guidelines/layout/enums.html

和结构体一样，枚举类型也是复合类型，是用户定义类型。

枚举类型定义与使用，例如定义网络地址类型：

```rust,ignore
#[derive(Debug)]
enum IpAddrKind {
    V4,
    V6,
}

#[derive(Debug)]
struct IpAddr {
    kind: IpAddrKind,
    address: String,
}
fn main() {
    
    let home = IpAddr {
        kind: IpAddrKind::V4,
        address: String::from("127.0.0.1"),
    };
    
    let loopback = IpAddr {
        kind: IpAddrKind::V6,
        address: String::from("::1"),
    };
    println!("{:?} -> {:?}", home, IpAddrKind::V4);
}
```

以上 IpAddrKind 枚举类型的成员没有指定类型，可以指定成员的类型，并且可以指定不同的数据类型。


```rust,ignore
enum IpAddr {
    V4(String),
    V6(String),
}

let home = IpAddr::V4(String::from("127.0.0.1"));

let loopback = IpAddr::V6(String::from("::1"));
```

```rust,ignore
enum IpAddr {
    V4(u8, u8, u8, u8),
    V6(String),
}

let home = IpAddr::V4(127, 0, 0, 1);

let loopback = IpAddr::V6(String::from("::1"));
```

```rust,ignore
enum Message {
    Quit,                       // Quit has no data associated with it at all.
    Move { x: i32, y: i32 },    // Move includes an anonymous struct inside it.
    Write(String),              // Write includes a single String.
    ChangeColor(i32, i32, i32), // ChangeColor includes three i32 values.
}
```

以上这些都表明枚举类型和结构体很相似，包含定义方法，也是：

```rust,ignore
impl Message {
    fn call(&self) {
        // method body would be defined here
    }
}
```

使用一个 Option Enum 好过使用 Null Values，Rust 系统中，使用 Option 来替代直接使用 Null 指针。

```rust,ignore
#[derive(Debug)]
enum Option<T> {
    Some(T),
    None,
}

let y: Option<i8> = Option::Some(5);
let absent_number: Option<i32> = Option::None;
if let Option::Some(x) = y {
    println!("Sum val is : {}" , x);
}else{
    println!("absent_number can not equal None")
}
```

枚举类型配置 match 流程控制的用法在 Rust 中很常见：

```rust,ignore
fn plus_one(x: Option<i32>) -> Option<i32> {
    match x {
        Some(i) => Some(i + 1),
    }
}
```

一个枚举成员就像是一个结构体对象，除了枚举值的使用方式和结构体差异较大，其它方面的相似性更多。

枚举类型和结构体都可以嵌套定义，但不能循环嵌套自身。


## ⚡ Structures 结构体
- https://doc.rust-lang.org/book/ch05-00-structs.html
- https://doc.rust-lang.org/stable/book/ch10-01-syntax.html
- https://doc.rust-lang.org/stable/std/keyword.struct.html
- https://doc.rust-lang.org/stable/reference/expressions/struct-expr.html
- https://doc.rust-lang.org/reference/items/structs.html

和 Tuples 类似，结构体也可以组合不同类型的数据，但是结构体可以给成员命名。

Rust 提供三种结构体：

- Unit-Like Struct，如 `struct Point`；
- Tuple-Like Struct，如 `struct Point(i32, i32)`；
- Named-Field Struct，如 `struct Point(x: i32, y: i32)`；

以下 Cookie 单位结构体的等价表达：

```rust,ignore
struct Cookie;
let c = [Cookie, Cookie {}, Cookie, Cookie {}];

struct Cookie {}
const Cookie: Cookie = Cookie {};
let c = [Cookie, Cookie {}, Cookie, Cookie {}];
```

Tuple-Like Struct 的成员访问：

```rust,ignore
struct Point(i32, i32);
let mut p = Point(10, 11);
let px: i32 = match p { Point(x, _) => x };
p.0 = 11;
```

Named-Field 结构体使用示范：

```rust,ignore
struct User {
    pub username: String,
    pub email: String,
    pub sign_in_count: u64,
    pub active: bool,
}

let mut user1 = User {
    email: String::from("someone@example.com"),
    username: String::from("someusername123"),
    active: true,
    sign_in_count: 1,
};

user1.email = String::from("anotheremail@example.com");
```

pub 即 public 公共访问，可以省略，对于结构体，默认就是公共访问。

可以不定义而使用匿名结构体，anonymous struct，就像 JSON 对象一样，用花括号编写成员。

Rust 对结构体的处理上，有点高级语言的特性，当成员使用的变量值同名时，可以使用 Struct Update Syntax 简写：

```rust,ignore
fn build_user(email: String, username: String) -> User {
    User {
        email,
        username,
        active: true,
        sign_in_count: 1,
    }
}
```

也可以结合 Tuples 定义没有成员名字的结构体：

```rust,ignore
#![allow(unused)]
use std::fmt::Debug; // Trait to bound with.

#[derive(Debug)]
struct Color(i32, i32, i32);

struct QuitMessage; // unit struct
struct WriteMessage(String); // tuple struct
struct ChangeColorMessage(i32, i32, i32); // tuple struct

fn main() {
    let black = Color(0, 0, 0);
    println!("Color {:?}", black);
}
```

还可以定义单位化结构体，Unit-Like Structs Without Any Fields，即没有任何成员的结构体，如 `struct SomeUnit {}` 或 `struct Unit`。

以上结构体中只使用了原始数据类型，并没有使用到复杂类型，也没有使用引用，这些内容在涉及生命周期这一概念的文档进行解析。

泛型结构体：

```rust,ignore
struct Point<T> {
    x: T,
    y: T,
}

impl<T> Point<T> {
    fn x(&self) -> &T {
        &self.x
    }
}

fn main() {
    let p = Point { x: 5, y: 10 };

    println!("p.x = {}", p.x());
}
```
注意，Rust 结构体定义数据成员，而方法实现由 impl 关键字去实现，和 C/C++ 在结构体内部声明方法不同。

泛型实现这种语法，还可以有条件实现，为那些绑定某些 Trait 的结构体提供实现，如下：

```rust,ignore
// Listing 10-16: Conditionally implement methods on a generic type depending on trait bounds
impl<T: Display + PartialOrd> Point {
    fn cmp_display(&self) {
        if self.x >= self.y {
            println!("The largest member is x = {}", self.x);
        } else {
            println!("The largest member is y = {}", self.y);
        }
    }
}
```


另外，参考 Trait 类似的一揽子实现 blanket implementations。



## ⚡ Union 联合体
- https://doc.rust-lang.org/reference/items/unions.html
- Rust's Unsafe Code Guidelines Reference - Unions https://rust-lang.github.io/unsafe-code-guidelines/layout/unions.html
- Rust's Unsafe Code Guidelines Reference - Enums https://rust-lang.github.io/unsafe-code-guidelines/layout/enums.html

结构体 `Struct` 和联合体 `Union` 用法很像，但是 Rust 的联合体和 C 语言的一致，只根据最大字段来分配内存，访问联合体需要使用 unsafe：

```rust,ignore
use std::mem::{size_of, align_of_val};

#[repr(C)]
union MyUnion {
    f1: i8,
    f2: f32,
}

let u = MyUnion { f2: 2. };
println!("{:p}", unsafe{&u.f1});
println!("{:p}", unsafe{&u.f2});
assert_eq!(std::mem::size_of::<MyUnion>(), size_of::<f32>());
```

Rust 的 Enums 其实是 Tagged Union，而 Union 没有相应的 Tag 不具有安全性，所以需要通过 unsafe 进行访问。

以下枚举类型 MyEnum 可以等价地使用 Union 和 Struct 实现：

```rust,ignore
#[repr(C, Int)]
enum MyEnum {
    A(u32),
    B(f32, u64),
    C { x: u32, y: u8 },
    D,
}
```

等价实现：

```rust,ignore
#[repr(C)]
struct MyEnumRepr {
    tag: MyEnumTag,
    payload: MyEnumPayload,
}

#[repr(Int)]
enum MyEnumTag { A, B, C, D }

#[repr(C)]
union MyEnumPayload {
   A: u32,
   B: MyEnumPayloadB,
   C: MyEnumPayloadC,
   D: (),
}

#[repr(C)]
struct MyEnumPayloadB(f32, u64);

#[repr(C)]
struct MyEnumPayloadC { x: u32, y: u8 }
```



## ⚡ Error Handling 错误处理
- https://doc.rust-lang.org/rust-by-example/error.html
- https://doc.rust-lang.org/stable/core/option/index.html
- https://doc.rust-lang.org/stable/std/result/index.html
- https://doc.rust-lang.org/stable/std/option/index.html
- https://doc.rust-lang.org/std/panic/fn.catch_unwind.html
- https://doc.rust-lang.org/nomicon/panic-handler.html
- Writing an OS in Rust - Handling Exceptions https://os.phil-opp.com/handling-exceptions/

### 🟢🔵 Panics Option Result

Rust 有一套独特的处理异常情况的机制，它并不像其它语言中的 try 机制，或 Exception 类来表示错误。

Rust 程序中一般会出现两种错误：

- 可恢复错误，对应返回 Result<T, E>。
- 不可恢复错误，对应 panic! 宏，它会调用编译器提供的代码终止程序运行。

可恢复错误的典型案例是文件访问错误，如果访问一个文件失败，有可能是因为它正在被占用，是正常的，我们可以通过等待来解决。

不可恢复错误是由编程中无法解决的逻辑错误导致的，例如访问数组末尾以外的位置。

Rust 的分层错误处理模式：

- 如果合理期望缺失，则使用 `Option<T>`。
- 如果错误可以合理地处理，则使用 `Result<T, E>`。
- 如果错误无法合理地处理，线程 panics。
- 如果发生灾难性的错误，程序就会中止。

以下是两个常见的返回类型：

    pub enum Option<T> {
        None,
        Some(T),
    }

    pub enum Result<T, E> {
       Ok(T),
       Err(E),
    }

所有可能发生错误的函数都会返回一个标准的 `Result<T, E>` 枚举类型，它有两个泛型参数，分别用于两个取值：

- `Ok(value)` 表示操作成功的成员，包装了一个 `T` 型值；
- `Err(why)` 表示操作失败的成员，通常和 panic 关联，包装了一个 `E` 型值，这个值通常包含出错的参考信息；

结合模式匹配，可以对函数可能出现的值进行判断：

    if let Ok(some_value) = fun() {
        // do something with some_value
    }

示范 `Result<T, E>` 枚举类型的使用：

```rust,ignore
#[derive(Debug)]
enum Version { Version1, Version2 }

fn parse_version(header: &[u8]) -> Result<Version, &'static str> {
    match header.get(0) {
        None => Err("invalid header length"),
        Some(&1) => Ok(Version::Version1),
        Some(&2) => Ok(Version::Version2),
        Some(_) => Err("invalid version"),
    }
}

let version = parse_version(&[1, 2, 3, 4]);
match version {
    Ok(v) => println!("working with version: {:?}", v),
    Err(e) => println!("error parsing header: {:?}", e),
}
```

以上例子 parse_version 函数结合了 match 模式匹配来返回数值对应的 Version 枚举值，然后再用一条 match 模式匹配 Ok or Err 值来打印不同的信息。

```rust,ignore
let optional = None;
check_optional(optional);

let optional = Some(Box::new(9000));
check_optional(optional);

fn check_optional(optional: Option<Box<i32>>) {
    match optional {
        Some(p) => println!("has value {}", p),
        None => println!("has no value"),
    }
}
```

通过 `unwrap()` 方法可以取出 `Ok(value)` 包装的值，但不能对 `Err(why)` 操作，否则 panic。所以在使用 `unwrap()` 方法会在故障时执行 panic！ 并且终止程序。更简单的做法是使用 ? 操作符替代 ，它可以链式使用，如 x?，如果 x 是 None 或 Err，那么 ? 操作符就是向上传播 panic!，旧式代码还可以使用具有相同功能的 try! 宏。

也可以使用 `expect()` 方法，它可以指定出现错误时的提示信息，并且在正常情况下返回 OK 封装的值：

    expect("Some message...");

并且，Rust 默认使用了 `#[warn(unused_must_use)]`，即必需使用返回值 `Result<T, E>`，可以直接使用 `unwrap()`，如果我们知道错误或操作失败不会发生，但是编译器不知道这一点。

根据不同的使用场景，Result 或 Option 都提供了以下类似方法方便处理各种可能的情况：

- `unwrap` 直接消费有效数据，不管错误情况。
- `unwrap_unchecked` 消费数据，不检查返回值是否为 Err 值。
- `unwrap_err` 或 `unwrap_none` 直接消费数据。
- `unwrap_err_unchecked` 消费数据，不检查返回值是否为 Ok 值。
- `unwrap_or` 返回 Ok 值，如果是 Err 则返回指定的默认值。
- `unwrap_or_default` 返回 Ok 值，如果是 Err 则返回 T 类型的默认值，如数值类型的默认值为 0，字符串类型默认值为 ""。
- `unwrap_or_else` 返回 Ok 值，如果是 Err 则从一个闭包中计算一个值。

```rust,ignore
#![allow(unused)]
#![feature(option_result_unwrap_unchecked)]
fn main() {
    let x: Result<u32, &str> = Err("2");
    assert_eq!(unsafe { x.unwrap_unchecked() }, 2);
}
```

其它逻辑操作方法：

- `and` 返回 None/Err 值，如果是 Some/Ok 则返回一个指定值。
- `and_then` 返回 None/Err 值，如果是 Some/Ok 则从一个闭包中计算一个值。
- `or` 返回 Some/Ok 值，如果是 None/Err 则返回一个指定值。
- `or_else` 返回 Some/Ok 值，如果是 None/Err 则从一个闭包中计算一个值。

另外，可以使用对返回值进行映射变换成另一种值，在函数返回多种错误类型时，这些方法可以用来统一错误类型。

- `map( |T|->T )` 将 Option、Result 的数据类型映射为闭包返回的新类型，即更新 Some/Ok 包装的数据类型，而不管 None/Err。
- `map_or( T, |T|->T )` 将 Some/Ok 通过行闭包函数映射转换为 T 类型，如果是 None/Err 则返回指定的默认值，第一个参数指定默认值。
- `map_or_else( |T|->T, |T|->T )` 指定两个闭包，分别用于重新映射 None/Err 和 Some/Ok 包装的值类型。

看源代码定义更清晰：

```rust,ignore
pub fn map<U, F: FnOnce(T) -> U>(self, f: F) -> Option<U> {
    match self {
        Some(x) => Some(f(x)),
        None => None,
    }
}
pub fn map_or<U, F: FnOnce(T) -> U>(self, default: U, f: F) -> U {
    match self {
        Some(t) => f(t),
        None => default,
    }
}
pub fn map_or_else<U, D: FnOnce() -> U, F: FnOnce(T) -> U>(self, default: D, f: F) -> U {
    match self {
        Some(t) => f(t),
        None => default(),
    }
}
```

另外，传入 map_or 的参数是前期评估，而 map_or_else 则是延迟评估。

列如，以下例子：

```rust,ignore
fn double_first_v1(vec: Vec<&str>) -> Option<Result<i32, ParseIntError>> {
    vec.first().map(|first| {
        first.parse::<i32>().map(|n| 2 * n)
    })
}
fn double_first_v2(vec: Vec<&str>) -> Result<Option<i32>, ParseIntError> {
    let opt = vec.first().map(|first| {
        first.parse::<i32>().map(|n| 2 * n)
    });

    opt.map_or(Ok(None), |r| r.map(Some))
}
fn double_first_v3(vec: Vec<&str>) -> Option<i32> {
    let opt = vec.first().map(|first| {
        first.parse::<i32>().map(|n| 2 * n)
    });
    opt.map_or(None, |s| {
        match s {
            Ok(v) => Some(v),
            Err(i) => None,
        }
    })
}
let numbers = vec!["42", "93", "18"];
let empty = vec![];
let strings = vec!["tofu", "93", "18"];

println!("The first doubled is {:?}", double_first_v1(numbers));
println!("The first doubled is {:?}", double_first_v1(empty));
println!("The first doubled is {:?}", double_first_v1(strings));
```

字符串的数值解析方法 parse 返回类型为 `Result<i32, ParseIntError>`。

根据输入数据，对于 numbers 或 strings 进行解析，vec.first() 都可以得到一个数据进行处理。而处理 empty 的空向量列表时，就没有数据了。这会导致 double_first_v1 出现混乱的返回值，即使解析数值出错也会得到一个 Some 值。

通过 map 方法重新映射，可以改变这样混乱的局面：

    # double_first_v1
    The first doubled is Some(Ok(84))
    The first doubled is None
    The first doubled is Some(Err(ParseIntError { kind: InvalidDigit }))

    # double_first_v2
    The first doubled is Ok(Some(84))
    The first doubled is Ok(None)
    The first doubled is Err(ParseIntError { kind: InvalidDigit })

    # double_first_v3
    The first doubled is Some(84)
    The first doubled is None
    The first doubled is None

也可以通过 ok 方法转换 `Option<T>` 和 `Result<T, E>` 两种类型：

```rust,ignore
let x = Some("foo");
assert_eq!(x.ok_or(0), Ok("foo"));

let x: Option<&str> = None;
assert_eq!(x.ok_or(0), Err(0));

let x = Some("foo");
assert_eq!(x.ok_or_else(|| 0), Ok("foo"));

let x: Option<&str> = None;
assert_eq!(x.ok_or_else(|| 0), Err(0));

let x: Result<u32, &str> = Ok(2);
assert_eq!(x.ok(), Some(2));

let x: Result<u32, &str> = Err("Nothing here");
assert_eq!(x.ok(), None);
```

### 🟢🔵 Unpacking & Propagating Errors with ?

如果你的代码有大量的函数调用会返回 Result，那么错误处理将会是非常冗余枯燥的。

Rust 提供了 ? 操作符来简化错误值得传播，相当于 throws 操作，并且可以进行链式表达：

```rust,ignore
use std::fs::File;
use std::io;
use std::io::Read;

fn read_username_from_file() -> Result<String, io::Error> {
    let mut s = String::new();

    File::open("hello.txt")?.read_to_string(&mut s)?;

    Ok(s)
}
```

这个操作符号对于 `Result` or `Option` 或其它实现了 std::ops::Try 的类型有效。

如果函数返回 `Result` or `Option`，那么可以使用 ? 操作符。

```rust,ignore
use std::error::Error;
use std::fs::File;

fn main() -> Result<(), Box<dyn Error>> {
    let f = File::open("hello.txt")?;

    Ok(())
}
```



### 🟢🔵 Panic Hook

Rust 在 std::panic 模型提供了几个错误处理的相关函数：

- `catch_unwind`    调用闭包并捕捉 unwinding panic。
- `panic_any`   类似 panic 宏，但可以提供一个值作为 panic payload。
- `resume_unwind`   触发 panic 但不调用 panic hook。
- `set_hook`    注册一个 panic hook 函数，会替换已经注册的函数。
- `take_hook`   解除 panic hook，并返回这个函数。

还有两个错误信息对象：

```rust,ignore
#[lang = "panic_info"]
#[stable(feature = "panic_hooks", since = "1.10.0")]
#[derive(Debug)]
pub struct PanicInfo<'a> {
    payload: &'a (dyn Any + Send),
    message: Option<&'a fmt::Arguments<'a>>,
    location: &'a Location<'a>,
}

#[lang = "panic_location"]
#[derive(Copy, Clone, Debug, Eq, Hash, Ord, PartialEq, PartialOrd)]
#[stable(feature = "panic_hooks", since = "1.10.0")]
pub struct Location<'a> {
    file: &'a str,
    line: u32,
    col: u32,
}
```

Rust 的 Unwinding 策略可以将 panic 状态恢复过来：

```rust,ignore
use std::panic;

let result = panic::catch_unwind(|| {
    println!("hello!");
});
assert!(result.is_ok());

let result = panic::catch_unwind(|| {
    panic!("oh no!");
});
assert!(result.is_err());
```

使用 `set_hook`、`take_hook` 可以注册、解除一个 panic hook 函数，

```rust,ignore
use std::panic;

panic::set_hook(Box::new(|panic_info| {
    if let Some(s) = panic_info.payload().downcast_ref::<&str>() {
        println!("panic occurred: {:?}", s);
    } else {
        println!("panic occurred");
    }
    if let Some(location) = panic_info.location() {
        println!("panic occurred in file '{}' at line {}", location.file(), location.line());
    } else {
        println!("panic occurred but can't get location information...");
    }
}));

// let _ = panic::take_hook();

panic!("Normal panic");
```

使用 `resume_unwind` 触发 panic 并且避免执行 panic hook：

```rust,ignore
use std::panic;

let result = panic::catch_unwind(|| {
    panic!("oh no!");
});

if let Err(err) = result {
    panic::resume_unwind(err);
}
```

参考《深入浅出 Rust》，如果我们尝试使用 `-C panic=abort` 选项编译代码，可以看到，这个 std::panic::catch_unwind 起不了什么作用。

    rustc -C panic=unwind test.rs
    rustc -C panic=abort test.rs

但是，请大家注意，这个 catch_unwind 机制绝对不是设计用于模拟 “try catch” 机制的。请大家永远不要利用这个机制，来做正常的流程控制。它的主要用处在哪里呢，比如下面的这些情况：

在 FFI 场景下的时候，C 语言调用 Rust 函数，在 Rust 内部出现了 panic，直接扔到 C 代码中会导致未定义行为（undefined behavior）。

某些高级抽象机制，需要阻止栈展开，比如线程池，如果一个线程中出现了 panic，我们希望只把这个线程关闭，而不至于将整个线程池一起被拖下水。


### 🟢🔵 Error Message

错误发生时，通常可以记录的是一个错误码，而将错误码与相关的信息关联起来，才能给用户友好的提示。

参考 std::io 库中的错误处理方式：

```rust,ignore
pub struct Error {
    repr: Repr,
}

#[stable(feature = "rust1", since = "1.0.0")]
impl fmt::Debug for Error {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        fmt::Debug::fmt(&self.repr, f)
    }
}

#[stable(feature = "rust1", since = "1.0.0")]
impl fmt::Display for Error {
    fn fmt(&self, fmt: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self.repr {
            Repr::Os(code) => {
                let detail = sys::os::error_string(code);
                write!(fmt, "{} (os error {})", detail, code)
            }
            Repr::Custom(ref c) => c.error.fmt(fmt),
            Repr::Simple(kind) => write!(fmt, "{}", kind.as_str()),
        }
    }
}

enum Repr {
    Os(i32),
    Simple(ErrorKind),
    Custom(Box<Custom>),
}

impl fmt::Debug for Repr {
    fn fmt(&self, fmt: &mut fmt::Formatter<'_>) -> fmt::Result {
        match *self {
            Repr::Os(code) => fmt
                .debug_struct("Os")
                .field("code", &code)
                .field("kind", &sys::decode_error_kind(code))
                .field("message", &sys::os::error_string(code))
                .finish(),
            Repr::Custom(ref c) => fmt::Debug::fmt(&c, fmt),
            Repr::Simple(kind) => fmt.debug_tuple("Kind").field(&kind).finish(),
        }
    }
}
```

示范使用：

```rust,ignore
use std::io::{Error, ErrorKind};

fn main(){
    let not_found = ErrorKind::NotFound;
    let error = Error::from(not_found);
    assert_eq!("entity not found", format!("{}", error));
    assert_eq!("Kind(NotFound)", format!("{:?}", error));
}
```


## ⚡ Collections 集合
- https://doc.rust-lang.org/book/ch08-00-common-collections.html
- https://doc.rust-lang.org/std/collections/index.html
- https://doc.rust-lang.org/stable/std/collections/index.html
- https://doc.rust-lang.org/rust-by-example/std.html
- Learn Rust With Entirely Too Many Linked Lists https://rust-unofficial.github.io/too-many-lists/

集合几乎是所有高级语言必需的数据结构类型，其它数据类型一般表达一个值，而集合表达一系列的值，并且这此值存放于 Heap 内存区，即编译器不能确定它的大小。所以，集合类型需要在运行时才知道需要多大容量去存储数据，并且容量可以随时调整。不同的集合类型具有不同的性能，这需要根据需要去选择合式的集合类型。

集合的底层实现涉及二叉树数据结构的实现，需要对红黑树有一定的了解。

以下是最常用的一些集合类型：

- A `vector` allows you to store a variable number of values next to each other.
- A `string` is a collection of `characters`. We’ve mentioned the `String` type previously, but in this chapter we’ll talk about it in depth.
- A `hash map` allows you to associate a value with a particular key. 

标准库 std::collections std::vec 提供了以下几种集合类型，主要是向量和哈希映射类型：

- Sequences: 
    - `Vec` 向量列表，每个值紧接前一个值，类似数组，差别在于使用 Heap 内存且可动态增长，通过 vec 宏可以像数组一样创建向量列表。
    - `VecDeque` 基于可增长的环形缓冲区算法 RingBuffer 实现的双端队列，可以往两端 push、pop 数据，还可以进行 rotate 操作。
    - `LinkedList` 双向链表，性能比 VecDeque 差，比 Vec 更差。
- Maps: 
    - `HashMap` 无序哈希映射。
    - `BTreeMap` 有序二叉树映射。
- Sets:  
    - `HashSet` 无序哈希集合，值为空元组的特定类型。
    - `BTreeSet` 有序的二叉树集合，值为空元组的特定类型。
- Misc: 
    - `BinaryHeap` 基于二叉最大堆(Binary Heap)实现的优先队列。

Sets 和 Collections 都叫集合，通常后者用于概括性的称谓。

从类型名字可以看到，二叉树 B-Tree 这种数据结构的应用是非常广泛的，而实际中还有各种扩展版本，如红黑树。

使用集体时，需要考虑集成的主要开销，涉及以下几个方面：

- 随着数据增长，集合需要调整容量时的开销；
- 
- 对于链表，数据排序

Sequences

    |            |     get(i)     |    insert(i)    |   remove(i)    | append |  split_off(i)  |
    |------------|----------------|-----------------|----------------|--------|----------------|
    | Vec        | O(1)           | O(n-i)*         | O(n-i)         | O(m)*  | O(n-i)         |
    | VecDeque   | O(1)           | O(min(i, n-i))* | O(min(i, n-i)) | O(m)*  | O(min(i, n-i)) |
    | LinkedList | O(min(i, n-i)) | O(min(i, n-i))  | O(min(i, n-i)) | O(1)   | O(min(i, n-i)) |

星号标注的方法，如果比较起来，通常 `Vec` 是最快的，其实是 `VecDeque`，最后是 `LinkedList`。

Maps 和 Sets 的操作开销一致

    |          |    get    |   insert  |   remove  | predecessor | append |
    |----------|-----------|-----------|-----------|-------------|--------|
    | HashMap  | O(1)~     | O(1)~*    | O(1)~     | N/A         | N/A    |
    | BTreeMap | O(log(n)) | O(log(n)) | O(log(n)) | O(log(n))   | O(n+m) |


按文档提供的建议集合类型的选择：

- Use a `Vec` when:
    - 想要收集一系列条目另外再进行处理。
    - 想要一个特定顺序的元素序列，并且只附加到或靠近末端。
    - 想要一个 Stack 数据结构。
    - 想要一个可以调整大小的数组。
    - 想要一个使用 Heap 内存的数组。
- Use a `VecDeque` when:
    - 想要想要一个支持在序列两端有效插入数据的 Vec。
    - 想要想要一个队列。
    - 想要想要一个双端队列 queue or deque。
- Use a `LinkedList` when:
    - 想要一个大小未知的 Vec or VecDeque，但是不容忍摊派（tolerate amortization）。
    - 想要高效 split、append 的列表。
    - 真的确定需要一个双向链表，连续的确认表示这个数据结构是消耗比较大的。
- Use a `HashMap` when:
    - 想要通过关联 keys 访问任意的什。
    - 想要一个缓存。
    - 想要一个影射，就只是这个需求。
- Use a `BTreeMap` when:
    - 想要一个 key 是有序的影射。
    - 想要按需获取一个范围的条目。
    - 对最小或最大的键值对感兴趣。
    - 想要查找相似或更大的内容关联的最大或最小的 key。
- Use the `Set` variant of any of these Maps when:
    - 只需要记得哪些键是看到过的。
    - 要处理的值并没有关联的 keys。
    - 只需要一个 set 集合。
- Use a `BinaryHeap` when:
    - 想要存储一堆元素，需要在任何给定时间只处理最大或最重要的元素。
    - 想要一个优先级队列。

所有的摊销成本是指当容量用尽时可能需要重新调整大小。如果发生调整大小，需要O(n)时间。我们的集合从来不会自动缩小，所以移除操作不会摊销。在足够大的一系列操作中，每次操作的平均成本将确定地等于给定成本。

容量管理是集合中重要的内容，集合数据存储是基于数组的，如果背后的数组大小和数据大小一致，这并不是很有效的策略。因为每次数据变动都会导致容量的调整，这意味着需要重新分配内存，这是大多数计算机上分配和管理内存的方式。分配一个全新的数组后，再将旧数组中的每个元素复制到新数组中，这并不是有效的操作。

因此，大多数集合使用分摊策略，先分配相当多的空闲空间，比如多于数据一倍的空间，这样只会偶尔触发容量调整。当数据确实增长过大时，才会重新分配一个大得多的数组来移动元素，以便需要一段时间才会进行另一个增长。虽然这种策略总体上很好，但如果集合不必调整其后备数组大小，效果会更好。所以，开发者使用集合时需要给一些指示信息。

集合对象提供了多种构造函数，`with_capacity(capacity: usize)` 指定需要的容量就可以避免不必要的重复内存操作，如果知道数据大小就尽可能使用这类方法。

如果可以预期到会有大量元素，`reserve(&mut self, additional: usize)` 方法可以提示集合准备为即将到来的数据留出多少空间。

如果确定不再有其它数据，则可以使用 `shrink_to_fit()` 方法将多余的后备空间清理掉。如何调试需要明确知道使用多大容量，可以通过 `capacity()` 方法获取。

集合的元素可以通过枚举方式有效的访问，通过 `iter()` 方法获取迭代器：

```rust,ignore
let vec = vec![1, 2, 3, 4];
for x in vec.iter() {
   println!("vec contained {}", x);
}

let mut vec = vec![1, 2, 3, 4];
for x in vec.iter_mut() {
   *x += 1;
}
```

使用 `into_iter()` 方法可以将集合转换为按值遍历的迭代器，注意和 `iter()` 获取迭代器的差别，一个按值迭代，一个按引用迭代。当不再需要集合本身，而其他地方需要值时，这是非常好的。还有 `extend()` 方法是主要的用来将一个集合的数据移到另一个集合中，它会自动调用 `into_iter()` 方法。

```rust,ignore
use std::collections::VecDeque;

let mut vec1 = vec![1, 2, 3, 4];
let vec2 = vec![10, 20, 30, 40];

// move values from vec2 to vec1, and vec1 to buf
vec1.extend(vec2);
let buf: VecDeque<_> = vec1.into_iter().collect();
```

和集合配合使用的迭代器对象方法还有：

- `map()` 映射为一个新的迭代器，如 `iter.map(|x| x*2)`；
- `fold()` 类似 reduce 方法，如 `iter.fold(0, |a, b| a+b)`；
- `skip(n)` 跳过指定数量的元素；
- `take(n)` 拿掉指定数量的元素；
- `rev()` 反转迭代器顺序；


另外，对于映射类型，还有相应的 entry 操作的相关函数，以提供一种有效的机制，用于有条件地操纵 key 映射的内容，这方面的主要动机是提供有效的累加器映射。

比如，要对 key 出现的过的次数计数，会需要根据 key 是否是首次出现进行条件判断，执行 find 后再执行 insert 操作，并且在每次操作中有效率地重复执行这一过程。

```rust,ignore
use std::collections::btree_map::BTreeMap;

let mut count = BTreeMap::new();
let message = "she sells sea shells by the sea shore";

for c in message.chars() {
    *count.entry(c).or_default() += 1;
}

assert_eq!(count.get(&'s'), Some(&8));

println!("Number of occurrences of each character");
for (char, count) in &count {
    println!("{}: {}", char, count);
}
```

当执行 `map.entry(&key)` 方法，映射会搜索 key 并得到一个 `Entry` 枚举变量。

如果是一个空条目 `Vacant(entry)`，则表示 key 不存在。在这种情况下，唯一有效的操作是在条目中插入一个值。完成插入条目后，将空条目转换为为插入的值的可变引用 mutable reference。这允许在搜索本身的生存期之外对值进行进一步的操作，需要对值执行复杂的逻辑而不管该值是否刚刚插入，这将非常有用。

如果是一个已占用条目 `Occupied(entry)` 则表示找到 key，在这种情况下，可以获取、插入或删除对应的值。此外，还可以将占用的条目转换为对其值的可变引用，从而提供对称的插入操作。



### 🟢🔵 Vec 向量列表
- https://doc.rust-lang.org/stable/std/vec/struct.Vec.html
- The Rustonomicon - Implementing Vec https://doc.rust-lang.org/nomicon/vec.html
- Rust 高级与非安全程序设计 - 实现 Vec https://learnku.com/docs/nomicon/2018/90-implementing-vec/4743

字符串类型 String 就是最常见的向量列表，使用 `vec!` 宏是最简单的向量列表创建方式，可以像数组一样创建一个向量列表。

或者使用 `Vec::new()` 方法构造：

    use crate::raw_vec::RawVec;

    pub const fn new() -> Self {
        Vec { buf: RawVec::NEW, len: 0 }
    }

可以使用 Vec 存储不同类型的值：

```rust,ignore
#[derive(Debug)]
enum SpreadsheetCell {
    Int(i32),
    Float(f64),
    Text(String),
}

let row = vec![
    SpreadsheetCell::Int(3),
    SpreadsheetCell::Text(String::from("blue")),
    SpreadsheetCell::Float(10.12),
];
println!("{:?}", row);
```

常用 Vec 操作参考：

```rust,ignore
// Iterators can be collected into vectors
let vec_list: Vec<i32> = (1..4).collect();
let vec_list = vec![1, 2, 3];

// Define a mutable vectors so it can grow
let mut vec_list: Vec<i32> = Vec::new();
vec_list.push(1);
vec_list.push(2);
vec_list.push(3);

// borrow `vec_list` as mutable
let third = vec_list.pop().take();

assert_eq!(vec_list, vec![1,2]);
assert_eq!(third, Some(3));

let first = &vec_list[0];
let second = &vec_list[1];
assert_eq!(first, &(1));

println!("First element: {:?}", first);
println!("Second element: {:?}", second);
println!("Third element popped: {:?}", third);
println!("vector list: {:?}", vec_list);
println!("vector list len: {:?}", vec_list.len());
println!("vector list cap: {:?}", vec_list.capacity());

// Out of bounds indexing yields a panic
// println!("Fourth element: {}", vec_list[3]);
// FIXME ^ Comment out this line

// `Vector`s can be easily iterated over
println!("Contents of vec_list:");
for x in vec_list.iter() {
    println!("> {}", x);
}

// A `Vector` can also be iterated over while the iteration
// count is enumerated in a separate variable (`i`)
for (i, x) in vec_list.iter().enumerate() {
    println!("In position {} we have value {}", i, x);
}

// Thanks to `iter_mut`, mutable `Vector`s can also be iterated
// over in a way that allows modifying each value
for x in vec_list.iter_mut() {
    *x *= 3;
}
println!("Updated vector: {:?}", vec_list);
```

根据输入创建指定容量向量列表：

```rust,ignore
use std::env;
use std::str::FromStr;

let args: Vec<String> = env::args().collect();

if args.len()==1 {
    println!("usage: {} num", args[0]);
    return;
}
let number = match usize::from_str(&args[1]){
    Ok(val) => {
        let vec:Vec<usize> = Vec::with_capacity(val);
        dbg!(vec.len(), vec.capacity());
        val
    }
    Err(info) => {
        dbg!(info);
        0
    }
};
```



### 🟢🔵 String 字符串列表
- https://doc.rust-lang.org/std/str/
- https://doc.rust-lang.org/std/string/
- https://doc.rust-lang.org/stable/std/ffi/struct.CString.html
- https://doc.rust-lang.org/stable/std/ffi/struct.OsString.html
- Rust Language Cheat Sheet https://cheats.rs/#strings-chars
- Storing UTF-8 Encoded Text with Strings  https://doc.rust-lang.org/book/ch08-02-strings.html
- regex 1.4.5 https://crates.io/crates/regex

Rust 有两类字符串，`String` 类型基于向量列表 `Vec<u8>`，而字符串 `&str` 是切片类型 `&[u8]`。
在代码文件中的字面量，即双引号的字符串字面量是 `&str` 类型，to_string() 方法可获取 String 类型。

Stirng 到 &str 可以直接 as_str() 到转换得到，没有什么计算过程。

另外，因为以下理由，Rust 提供了类似的 OsString 和 &OsStr 两种字符串：

- 在 Unix 系统，字符串可以是任意非 0 值字节序列，通常解析为 UTF-8。
- 在 Windows 系统，字符串解析为非 0 值 16-bit 值，解析为 UTF-16。
- Rust 的字符总是有效的 UTF-8 字符集，包括 0 值。

Rust 使用 OsString & OsStr 对接平台原生字符串值，它们可以高效地互相转换，几乎没有任何消耗。

另外，为了提供 C/C++ FFI 语言接口，又提供了 &CStr 和 CString 两类字符串，它们以 NUL 字符作为结束标记，它们也是不含 0 值的字符串。在 Unix 系统调用中，应该使用 CStr。

C++ 程序拼接字符串：

```rust,ignore
string s1 = "Hello,";
const string s2 = "world";
s1 += s2;
```

Rust 程序拼接字符串：

```rust,ignore
let mut s1 = "Hello,".to_string();
let s2 = "world".to_string();
s1 += &s2;
```

Rust 字符串的拼接，根本就是把加法操作符右侧的字符串，拷贝一份，并附到左侧字符串之后，同时右侧的字符串的所有权不受影响。Rust 语言的设计需要将「借用」显式写出，所以就比 C++ 多了一个借用操作符。

两个 `&str` 也不能直接相加，但可以将 `&str` 加到 String 上，并且，两个 String 相加，要将 + 右侧的转换为借用形式：

    let s = "Hello," + "world"; // Can't use + with two &str
    let s = s1 + &s2; // Move s1 to s, and concats s2 to s

对于 + 右侧的 String 它必需转换成 `&str` 才能被连接到另一个字符串上，因为字符串对象没有 Copy 特性。

更好的方式是使用 format! 宏：

```rust,ignore
let s1 = String::from("Hello");
let s2 = String::from("world.");

let s = format!("{}, {}", s1, s2);
```

字符串使用：

```rust,ignore
// (all the type annotations are superfluous)
// A reference to a string allocated in read only memory
let pangram: &'static str = "the quick brown fox jumps over the lazy dog";
println!("Pangram: {}", pangram);

// Iterate over words in reverse, no new string is allocated
println!("Words in reverse");
for word in pangram.split_whitespace().rev() {
    println!("> {}", word);
}

// Copy chars into a vector, sort and remove duplicates
let mut chars: Vec<char> = pangram.chars().collect();
chars.sort();
chars.dedup();

// Create an empty and growable `String`
let mut string = String::new();
for c in chars {
    // Insert a char at the end of string
    string.push(c);
    // Insert a string at the end of string
    string.push_str(", ");
}

// The trimmed string is a slice to the original string, hence no new
// allocation is performed
let chars_to_trim: &[char] = &[' ', ','];
let trimmed_str: &str = string.trim_matches(chars_to_trim);
println!("Used characters: {}", trimmed_str);

// Heap allocate a string
let alice = String::from("I like dogs");
// Allocate new memory and store the modified string there
let bob: String = alice.replace("dog", "cat");

println!("Alice says: {}", alice);
println!("Bob says: {}", bob);
```

在程序中使用的字符串字面量是 `&'static str` 类型，静态分配不可修改。

    let hello_world = "Hello, World!";
    let hello_world: &'static str = "Hello, world!";

字面量字符串转义参考：

```rust,ignore
// You can use escapes to write bytes by their hexadecimal values...
let byte_escape = "I'm writing \x52\x75\x73\x74!";
println!("What are you doing\x3F (\\x3F means ?) {}", byte_escape);

// ...or Unicode code points.
let unicode_codepoint = "\u{211D}";
let character_name = "\"DOUBLE-STRUCK CAPITAL R\"";

println!("Unicode character {} (U+211D) is called {}",
            unicode_codepoint, character_name );


let long_string = "String literals
                    can span multiple lines.
                    The linebreak and indentation here ->\
                    <- can be escaped too!";
println!("{}", long_string);
```

与 C/C++ 的其它不同点：

- Rust 使用 UTF-8 作为底层的编码，而不是常见的 ASCII。也就是说，Rust 中的字符数据类型可以包含 Unicode 和其它特殊字符。
- Rust 中的数字类型的是 Rust 语言不允许类型自动转换。

在使用字符串切片时，注意获取到非字符边界将抛出异常，例如国字的 UTF8 编码是 3 个字节，以下切片就没有获取到字符边界：

    println!("{}", &("国语")[0..2]);
    // thread 'main' panicked at 'byte index 2 is not a char boundary; it is inside '国' (bytes 0..3) of `国语`'

Strings & Chars 字面量表达参考：

- `"..."`   String literal, UTF-8, will interpret `\n` as line break 0xA, …
- `r"..."`  Raw string literal. UTF-8, won't interpret `\n`, …
- `r#"..."#`    Raw string literal, UTF-8, but can also contain `"`. Number of `#` can vary.
- `b"..."`  Byte string literal; constructs ASCII [u8], not a string.
- `br"..."`, `br#"..."#`    Raw byte string literal, ASCII [u8], combination of the above.
- `'🦀'` Character literal, fixed 4 byte unicode 'char'.
- `b'x'`    ASCII byte literal.

ASCII escapes

- `\x41`    7-bit character code (exactly 2 digits, up to 0x7F)
- `\n`  Newline
- `\r`  Carriage return
- `\t`  Tab
- `\\`  Backslash
- `\0`  Null


字符串分割：

    Concatenate strings (any Display↓ that is). 1   format!("{}{}", x, y)
    Split by separator pattern. STD 🔗   s.split(pattern)
         ... with &str  s.split("abc")
         ... with char  s.split('/')
         ... with closure   s.split(char::is_numeric)
    Split by whitespace.    s.split_whitespace()
    Split by newlines.  s.lines()
    Split by regular expression.2   Regex::new(r"\s")?.split("one two three")

使用正则表达式：

```rust,ignore
use regex::Regex;

fn main() {
    let re = Regex::new(r"(?x)
(?P<year>\d{4})  # the year
-
(?P<month>\d{2}) # the month
-
(?P<day>\d{2})   # the day
").unwrap();
    let caps = re.captures("2010-03-14").unwrap();

    assert_eq!("2010", &caps["year"]);
    assert_eq!("03", &caps["month"]);
    assert_eq!("14", &caps["day"]);
}
```

```rust,ignore
use regex::Regex;

const TO_SEARCH: &'static str = "
On 2010-03-14, foo happened. On 2014-10-14, bar happened.
";

fn main() {
    let re = Regex::new(r"(\d{4})-(\d{2})-(\d{2})").unwrap();

    for caps in re.captures_iter(TO_SEARCH) {
        // Note that all of the unwraps are actually OK for this regex
        // because the only way for the regex to match is if all of the
        // capture groups match. This is not true in general though!
        println!("year: {}, month: {}, day: {}",
                 caps.get(1).unwrap().as_str(),
                 caps.get(2).unwrap().as_str(),
                 caps.get(3).unwrap().as_str());
    }
}
```

### 🟢🔵 VecDeque
### 🟢🔵 LinkedList
### 🟢🔵 HashMap
### 🟢🔵 BTreeMap
### 🟢🔵 HashSet BTreeSet
- https://doc.rust-lang.org/stable/std/collections/struct.BTreeSet.html

集合 Sets 的方法和 Map 类似，因为是基于 HashMap BTreeMap 实现的。



### 🟢🔵 BinaryHeap
- https://doc.rust-lang.org/stable/std/collections/struct.BinaryHeap.html
- https://doc.rust-lang.org/stable/std/cmp/struct.Reverse.html

堆树亦称为优先队列 priority queue，通常是一个可以被看做一棵树的数组对象，如 Rust 的 BinaryHeap 实现。在队列中，调度程序反复提取队列中第一个作业并运行，因而实际情况中某些时间较短的任务将等待很长时间才能结束，或者某些不短小，但具有重要性的作业，同样应当具有优先权，堆即为解决此类问题设计的一种数据结构。

基于 `Heap Tree` 堆积树，在堆排序中有应用，是一种完全二叉树，min-heap 小根堆要求节点小于或等于子节点值，max-heap 大根堆要求节点大于或等于子节点值。

          max-heap          min-heap
             9                 3      
         ┌───┴───┐         ┌───┴───┐  
         8       7         4       5  
       ┌─┴─┐   ┌─┴─┐     ┌─┴─┐   ┌─┴─┐
       6   5   4   3     6   7   8   9
     ┌─┴─┐             ┌─┴
     6   5             7

将普通二叉树转换成堆树的过程就是堆化 heapify。

BinaryHeap 使用要点：

- push 无序入栈；
- pop 有序出栈，对于 Max-heap 总是先大后小的值出栈；
- 对于 Min-heap，可以引入 `Reverse` 进行逆向排序，pop 先小后大，包装后相应值为 `Some(Reverse(x))`；

如果需要包装自定义对象，需要实现 `Ord` `Eq` `PartialOrd` `PartialEq`。

使用示范，默认是 Max-heap：

```rust,ignore
use std::collections::BinaryHeap;

// Type inference lets us omit an explicit type signature (which
// would be `BinaryHeap<i32>` in this example).
let mut heap = BinaryHeap::<i8>::new();

// We can use peek to look at the next item in the heap. In this case,
// there's no items in there yet so we get None.
assert_eq!(heap.peek(), None);

// Let's add some scores...
heap.push(1);
heap.push(5);
heap.push(127);

// Now peek shows the most important item in the heap.
assert_eq!(heap.peek(), Some(&127));

// We can check the length of a heap.
assert_eq!(heap.len(), 5);

// Iterate over the items in the heap in a random order.
for x in &heap {
    println!("{}", x);
}

// If we instead pop these scores, they should come back in order.
assert_eq!(heap.pop(), Some(127));
assert_eq!(heap.pop(), Some(5));
assert_eq!(heap.pop(), Some(1));
assert_eq!(heap.pop(), None);

// We can clear the heap of any remaining items.
heap.clear();

// The heap should now be empty.
assert!(heap.is_empty());
```

```rust,ignore
use std::collections::BinaryHeap;
use std::cmp::Reverse;
use std::cmp::Ord;
use std::cmp::PartialOrd;
use std::cmp::PartialEq;
use std::cmp::Ordering;

#[derive(Debug, Eq)]
struct Task {
    name: &'static str
}

// #[derive(Eq)]
// impl Eq for Foo {}

impl Ord for Task {
    fn cmp(&self, other: &Self) -> Ordering {
        self.name.cmp(&other.name)
    }
}
impl PartialOrd for Task {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.name.cmp(other.name))
    }
}

impl PartialEq for Task {
    fn eq(&self, other:&Self) -> bool {
        self.name == other.name
    }
}

let mut heap = BinaryHeap::new();

heap.push(Reverse(Task{name:"t1"}));
heap.push(Reverse(Task{name:"t5"}));
heap.push(Reverse(Task{name:"t2"}));

println!("{:?} - {:?}", heap.pop(), Some(Reverse(Task{name:"t1"})));
println!("{:?} - {:?}", heap.pop(), Some(Reverse(Task{name:"t2"})));
println!("{:?} - {:?}", heap.pop(), Some(Reverse(Task{name:"t5"})));
println!("{:?} - {:?}", heap.pop(), "None");
```




## ⚡ Smart Pointers
- Dynamically Sized Types and the Sized Trait https://doc.rust-lang.org/book/ch19-04-advanced-types.html
- Smart Pointers https://doc.rust-lang.org/book/ch15-00-smart-pointers.html
- Rc - Reference Counted https://doc.rust-lang.org/stable/std/rc/index.html
- Box - heap allocation https://doc.rust-lang.org/stable/std/boxed/index.html
- https://doc.rust-lang.org/stable/std/boxed/struct.Box.html
- https://doc.rust-lang.org/stable/std/borrow/enum.Cow.html
- https://doc.rust-lang.org/stable/std/sync/struct.Arc.html
- https://doc.rust-lang.org/stable/std/sync/struct.Mutex.html
- https://doc.rust-lang.org/stable/std/sync/struct.RwLock.html
- https://doc.rust-lang.org/stable/std/ptr/index.html

不像 Java 这类高级语言，它们带有运行时的垃圾回收器机制，会在程序运行过程中根据内存使用状态自动释放不再使用的内存空间，而 C/C++/Rust 则没有垃圾回收器。

前面的内容已经解释了通常说的调用堆栈指的就是 Stack，它是在硬件层实现的一个 LIFO - Last in, first out 数据结构，通过 CPU 的 `pop` `push` 指令操作。这些指令控制着 CPU 内部的一个堆栈指针寄存器 SP - Stack Pointer，在程序运行时，始终指向 Stack 顶部，会随着函数调用、返回转移。

对比 Stack 和 Heap 内存： 

- Stack 内存访问更快，有寄存器直接可达，栈上内存分配是连续的，要在编译期明确使用多大的 Stack 内存；
- 而堆内存，更多是由开发者主动申请调配，通过 `malloc()` `free()` 等函数动态随机分配内存，典型的就是使用 `new` 关键字来为实例申请内存。

Stack 调用栈内存从高位地址向下增长，且栈内存分配是连续的，一般操作系统对栈内存大小是有限制的，Linux/Unix 类系统上面可以通过 ulimit 命令设置最大栈内存空间大小。调用 Rust 函数时会创建一个临时栈空间，调用结束后 Rust 会让这个栈空间里的对象自动进入 Drop 流程，最后栈顶指针自动移动到上一个调用栈顶，无需程序员手动干预，因而栈内存申请和释放是非常高效的。

Heap 堆内存则是从低位地址向上增长，堆内存通常只受物理内存限制。

Rust 在编译时会跟踪代码的哪些部分正在使用堆内存，最小化堆上重复数据的数量，清理堆上未使用的数据以避免空间耗尽，这些都是所有权所要解决的问题。

一旦您了解了所有权，就不需要经常考虑堆栈和堆，但是知道管理堆数据是所有权存在的原因有助于解释它为什么以这种方式工作。

当然，Rust 提供了智能指针简化对 Heap 内存的使用。

智能指针的一些用途：

- 通过智能指针可以实现多所有权。
- 通过 Box 实现递归类型 Recursive Types，那些在成员中包含自己的类型无法在编译期确定大小，而智能指针可以让它在运行时成立。

以下是常用智能指针：

- `Box<T>`智能指针内部指向堆内存，数据类型为 T。
    - 通过`Box::new(v)`创建，移动语义，独占所有权 - move，允许使用 * 转移本体所有权。
    - 是一种独享所有权智能指针，类似 C++ 的 unique_ptr。
- `Rc<T>` 引用计数智能指针 Reference Counting，记录堆内存上的数据被引用的次数。
    - 通过`Rc::new(v)`创建，移动语义，共享所有权 - clone，禁止使用 * 转移本体所有权。
    - 是一种共享所有权智能指针，类似 C++ 的 shared_ptr。

Rust 的所有权机制下，通常不能通过引用或变量直接修改数据，但是在智能指针的作用下，引入了一个新概念内部可变性 interior mutability。

如下：

- `Ref<T>`、`RefMut<T>`指针引用的数据可以直接通过`RefCell<T>`进行修改。

通过`RefCell<T>`智能指针，实现在运行时强制借用规则的类型，而不是通常的编译时借用规则。内部可变模式下，给不可变类型公开了一个 API 来改变内部值。而这种做法带来方便的同时，也让内存泄漏变成可能，需要知道防止它发生。

- `Cell<T>` 智能指针允许借用可变引用，即使数据是不可变的，这个过程被称为内部可变性。
    - 适合实现了Copy的类型，或者体积小的struct，因为get方法是直接按位复制的。
    - 无运行时开销，运行时安全。
    - `Cell::new(v)` 创建，移动语义
    - 获取本体 v：Cell::get()
    - 获取本体借用 &v：Cell::get_mut()
    - 修改本体 v：Cell::set(vv)
- `RefCell<T>` 智能指针允许借用可变引用，即使数据是不可变的，这个过程被称为内部可变性。

    适合未实现了Copy的类型，或者体积大的struct，Cell不好使的都是用这个。
    运行时有开销，会执行借用检查，运行时不安全。

    RefCell::new(v) ： 创建，移动语义
    不可变借用：RefCell::borrow()、类似Cell::get
    可变借用：RefCell::borrow_mut()、类似Cell::set

针对多线程，还提供了以下智能指针：

- `Arc<T>` 原子引用计数智能指针 Atomic Reference Counting，支持原子操作，多线程安全共享，通过 `Arc::new(v)` 创建，移动语义，共享所有权 - clone，禁止使用 * 转移本体所有权。是一种线程安全的共享所有权智能指针，类似 C++ 的 shared_ptr + mutex。
- `Mutex<T>` 互斥量用来保护共享数据，通过 `lock()` 和 `try_lock()` 方法返回的是一个 `MutexGuard<T>` 智能函数，由 `LockResult` 包装，`unwrap()` 解包，锁定后就可以通过智能指针访问互斥量内部的数据。
- `RwLock<T>` 读写锁，同时允许多个读，但只能有一个写，并且读和写不能同时存在。通过 `read()` `try_read()` `write()` `try_write()`方法返回 `RwLockReadGuard<T>` 或 `RwLockWriteGuard<T>` 智能指针。


另外 `Cow<T>` 是一种写时复制的枚举体的智能指针

    目的是减少复制操作，提高性能，多用于读多写少的场景

    Cow::Borrowed(v) | Cow::Owned(v) ： 创建，移动语义
    不可变借用：Cow::deref()，Owned会调用borrow返回，Borrowed直接返回
    可变借用：Cow::to_mut()，Borrowed会调用clone替换自己为Owned，然后Owned会匹配ref mut释放借用。
    获得本体：Cow::into_owned()，Borrowed会调用clone后返回，Owned会把自己返回。

智能指针有两个基本的行为：

- `Deref<T>` 为智能指针提供解除引用运算符 `*ref`，还有 `DerefMut<T><T>` 是可变解引用，有它才可以修改引用的数据。
- `Drop<T>` 为智能指针提供自动释放空间行为实现，在智能指针超出作用域时自动执行。

智能指针基本提供了不可变借用和可变借用方法，实现了以下部分接口的静态方法：

- AsMut<T> - `as_ref()`
- AsRef<T> - `as_mut()`
- Borrow<T> - `borrow()`
- BorrowMut<T> - `borrow_mut()`

Rc 和 Arc 都有 Weak 形式，Rc Weak 和 Arc Weak，

Rc 是一个引用计数指针，会对引用进行计数，每执行一次 `clone()` 引用计数加一：

- `Rc<T>` 包装的数据对象是 immutable 不可变的，即无法修改 T 数据对象，只能读；
- `Rc<T>` 只能用于同一线程内部，不能用于线程之间的对象共享，跨线程传递可以使用 `Arc<T>`；
- `Rc<T>` 实际上是一个指针，它不影响包裹对象的方法调用形式，即不存在先解开包裹再调用值这一说。
- 一旦最后一个拥有者消失，则资源会被自动回收，这个生命周期是在编译期就确定下来的；

Rc weak 版不会增加引用计数，有以下几个特点：

- 可访问，但不拥有。不增加引用计数，因此，不会对资源回收管理造成影响；
- `Weak<T>` 可通过调用 `Rc::downgrade()` 方法而转换得到；
- `Weak<T>` 通过 `upgrade()` 方法转换成 `Option<Rc<T>>`，如果资源已经被释放，则 Option 值为 None；
- 常用于解决循环引用的问题。

```rust,ignore
use std::rc::Rc;

let five = Rc::new(5);

let weak_five = Rc::downgrade(&five);

let strong_five: Option<Rc<_>> = weak_five.upgrade();
assert!(strong_five.is_some());

// Destroy all strong pointers.
drop(strong_five);
drop(five);

assert!(weak_five.upgrade().is_none());
```



## ⚡ Box - heap allocation

最简单的智能指针就是 std::boxed::Box：

    let five = 5;           // 5 in Stack memory
    let five = Box::new(5); // 5 in Heap memory

    let mut boxed = box 5;
    *boxed += 5;

事实上，`String` 和 `Vec<T>` 都是智能指针，但通常不这样称呼它们。它们各自拥有可管理的内存，也都实现了 Drop 和 Deref 两个特性。

因为所有权的约束，不能直接返回函数本地值的引用 &T，因为它的所有权作用域在函数内部，函数结束时就收回内存，返回引用就导致指针悬空 Dangling References。

除非引用是函数入参，这种情况下函数才可以返回引用，&str 或 &String，因为它位都是函数外部传入的，相当于归还所有权，所以生命周期也符合约束。

所以，通常用返回 String 而不是 &str, 返回 Vec<T> 而不是 &[T]，即函数应该返回 T 而不是引用 &T，也就是将所有权移出函数内部。

其实 String 类型使用堆来存储数据，所以可以直接返回，在函数返回时函数栈销毁后依然存在。

```rust,ignore
fn main() {
    let foo = &mut "world!".to_string();
    let s1 = return_as_is_v2(foo);
    let s2 = return_owned_v1("world!");
    assert_eq!("Hello, world!", format!("{}", s1));
    assert_eq!("Hello, world!", format!("{}", s2));
}

fn return_as_is_v1(x:&str)->&str {
    // let a:String = "Hello, ".to_string()+ x;
    // cannot return value referencing local variable `a`
    // returns a value referencing data owned by the current function
    // &a[..]
    
    // cannot return reference to temporary value
    // &("Hello, ".to_string() + x)
    
    &x[..]
    // or return x
}

fn return_as_is_v2(x:&mut String)->&str {
    x.insert_str(0, "Hello, ");
    &x[..]
    // or return x
}

fn return_owned_v1(x:&str)->String {
    let a:String = "Hello, ".to_string()+ x;
    a
}
```

另外，Rust 社区有一个 owning_ref 模块实现了在函数返回引用，但它还是基于所有权移动的基础上的。

另外，对于不能在编译期确定大小的类型 DST，如常见的 str，可以结合 Box 将其存储在堆内存中，并且通过智能指针进行操作。

Rust 引入的 `box` 关键词，可以用来取代 Box::new() 申请一个堆空间，也可以用在模式匹配：

```rust,ignore
#![feature(box_syntax, box_patterns)]
fn main() {
    let boxed = Some(box 5);
    match boxed {
        Some(box unboxed) => println!("Some {}", unboxed),
        None => println!("None"),
    }
}
```

它不是 stable 功能，不能在 Rust stable 版本使用。

注意，`Box<str>` 也不能直接通过 `Box::new()` 这样的方式创建，而是通过 String 转换得到。

```rust,ignore
use std::boxed::Box;

fn main() {
    let s3 = return_boxed_str("world!");
    assert_eq!("Hello, world!", format!("{}", s3));
}

// fn foo(x:&str)->Box<&str> {
//     let s:String = "Hello, ".to_string()+ x;
//     // cannot return Box<&str>, value referencing local variable `s`
//     // Box::new(&s[..]) 
    
//     // cannot return Box<&str>, value referencing temporary value
//     // Box::new(&s.to_owned()[..])

//     // expected `Box<str>`, found `Box<&str>`
//     // let boxed_str_ref: Box<str> = Box::new("string");

//     // the size for values of type `str` cannot be known at compilation time
//     // let boxed_str_ref = Box::new(s[..]);
// }

fn return_boxed_str(x:&str)->Box<str> {
    let s:String = "Hello, ".to_string()+ x;
    let boxed_str: Box<str> = s.to_owned().into_boxed_str();
    // let boxed_bytes: Box<[u8]> = boxed_str.into_boxed_bytes();
    // assert_eq!(*boxed_bytes, *s.as_bytes());
    boxed_str
}
```

## ⚡ owning_ref 占用引用
- Owning Ref https://crates.io/crates/owning_ref
- http://kimundi.github.io/owning-ref-rs/owning_ref/index.html

由于所有权机制的存在，Rust 系统通常不允许函数返回内部值的引用。

但是可以在底层实现这一需求，owning_ref 模块就是基于 stable_deref_trait 实现这一功能。和变量一样，引用也有所有者，owning_ref 会将引用的所有权从原来所有方移动到一个智能指针上。

根据模块定义，提供以下智能指针的包装类型：

- `ArcRef`  使用一个 `Arc` 作为引用的所有者。
- `BoxRef`  使用一个 `Box` 作为引用的所有者。
- `BoxRefMut`   使用一个 `Box` 作为可变引用的所有者。
- `ErasedArcRef`    使用一个 `Erased` 作为引用的所有者。
- `ErasedBoxRef`    使用一个 `Erased` 作为引用的所有者。
- `ErasedBoxRefMut` 使用一个 `Erased` 作为可变引用的所有者。
- `ErasedRcRef` 使用一个 `Erased` 作为引用的所有者。
- `MutexGuardRef`   使用一个 `MutexGuard` 作为引用的所有者。
- `MutexGuardRefMut`    使用一个 `MutexGuard` 作为可变引用的所有者。
- `RcRef`   使用一个 `Rc` 作为引用的所有者。
- `RefMutRef`   使用一个 `RefMut` 作为引用的所有者。
- `RefMutRefMut`    使用一个 `RefMut` 作为可变引用的所有者。
- `RefRef`  使用一个 `Ref` 作为引用的所有者。
- `RwLockReadGuardRef`  使用一个 `RwLockReadGuard` 作为引用的所有者。
- `RwLockWriteGuardRef` 使用一个 `RwLockWriteGuard` 作为引用的所有者。
- `RwLockWriteGuardRefMut`  使用一个 `RwLockWriteGuard` 作为可变引用的所有者。
- `StringRef`   使用一个 `String` 作为引用的所有者。
- `StringRefMut`    使用一个 `String` 作为可变引用的所有者。
- `VecRef`  使用一个 `Vec` 作为引用的所有者。
- `VecRefMut`   使用一个 `Vec` 作为引用的所有者。

模块中的 `StableDeref` 只是一个 unsafe marker trait，它没具体的方法定义，只是标记 unsafe 行为，确保解引用可以得到一个稳定的地址，即它的所有权已经移动。比如，Box, Vec, Rc, Arc 和 String 等等智能指针都实现了这一特性，当一个 Box 移动后，它内部数据的保存地址仍然是固定的。

更具体地说，实现者必须确保调用 deref() 方法返回的结果在对象的生存期内有效，而不仅仅是在借用的生存期内有效，并且即使对象被移动，deref 也是有效的。

模块主要提供以下两个对象来占有引用所有权，它们只有两个成员，owner 和 reference：

```rust,ignore
pub struct OwningRef<O, T: ?Sized> {
    owner: O,
    reference: *const T,
}

pub struct OwningRefMut<O, T: ?Sized> {
    owner: O,
    reference: *mut T,
}

pub struct OwningHandle<O, H>
    where O: StableAddress, H: Deref,
{
    handle: H,
    _owner: O,
}
```

它的工作原理是要求所有者类型解引用得到一个稳定内存地址，这实际上需要按 `Box<T>`、`Rc<T>` 等智能指针提供的堆分配。

`OwningHandle` 类型是一个补充类型，OwningRef 允许使用者传递一个 owned 对象，和一个引用 reference。而 OwningHandle 包含一个 owned 对象，和一个依赖对象。

OwningHandle 可以通过 `RefMut` 及关联的 `RefCell` 包装，或者通过 `RwLockReadGuard` 及关联的 `RwLock` 包装，它们的 API 都是统一的，对可以使用哪些类型的 owned 对象和依赖对象没有限制。

OwningHandle 创建时，使用 `new` 方法传入一个实现了 `ToHandle` 或 `ToHandleMut` 的 owner 对象，调用其提供的转换方法，对其解引用得到稳定的地址。或者对于没有实现  `ToHandle` 或 `ToHandleMut` 的对象，创建使用 `new_with_fn` 方法并且提供一个回调，回调会接收到对象的引用，它要保证返回的对象不会以比接收到的引用更长命。

由于传入的回调需要解引用一个裸指针 raw pointer，即需要使用 unsafe，为了避免在大多数调用方上强制执行这种不安全性，`ToHandle` 特性作为公共数据结构被实现为 unsafe 方法。实现 ToHandle 的类型可以用 OwningHandle 包装，而无需传递回调。


此模块提供了 `Erased` trait 对象用来擦除所有者的具体基类型，这允许将所拥有的引用与不同的所有者基类型混合。

这两个基本结构体提供以下共同的方法，参数会有些差别，但功能基本一致，还有几个特有方法：

- `as_owner` 返回 owner 的引用。
- `erase_owner` 即 `self.owner.into_erased()`，将 owner 的类型擦除。
- `into_owner` 返回 owner 并放弃所有权。
- `map` 将 reference 成员映射为闭包返回引用指向的数据及类型，回调类型 `FnOnce(&T) -> &U` 或者 `FnOnce(&mut T) -> &U`。
- `try_map` 允许失败的 `map`，返回 `Result` 枚举类型包装的 `OwningRef`。
- `map_owner` 将 owner 成员映射为闭包返回的数据及类型，unsafe 方法。
- `map_owner_box` 即 `Box::new(self.owner)`，用 Box 指针包装 owner。
- `new` 创建实例。
- `new_assert_stable_address` 类似 `new` 但不要求参数类型实现 `StableAddress`。

- OwningRefMut

    - `as_owner_mut` 可变引用版本的 `as_owner`，返回 owner 的可变引用。
    - `map_mut` 可变版的 `map`，回调类型 `FnOnce(&mut T) -> &mut U`
    - `try_map_mut` 可变版本的 `try_map`，回调类型 `FnOnce(&mut T) -> Result<&mut U, E>`。

- OwningRef

    - `map_with_owner` 类似 `map` 方法，只是回调中多了一个参数 `f(&self.owner, &self)`。
    - `try_map_with_owner`  类似 `map_with_owner` 方法，只是回调返回 `Result` 类型包装的 `OwningRef`。

两个对象 new 方法定义，返回值都实现 StableAddress，差别在于 Deref 和 DerefMut：

```rust,ignore
pub fn new(o: O) -> Self where O: StableAddress + Deref<Target = T>,
{
    OwningRef {
        reference: &*o,
        owner: o,
    }
}

pub fn new(o: O) -> Self where O: StableAddress + DerefMut<Target = T>,
{
    OwningRefMut {
        reference: &mut *o,
        owner: o,
    }
}
```

考虑以下的代码：

```rust,ignore
fn return_owned_and_referenced<'a>() -> (Vec<u8>, &'a [u8]) {
    let v = vec![1, 2, 3, 4];
    let s = &v[1..3];
    (v, s)
}
```

尽管，以上代码是不能通过编译的，因为返回了本地变量的引用，所有权机制不许可。但从内存布局来看，如果 Vector 存活周期超过引用的存活期 'a，那么返回的引用就是安全的，因为向量的数据分配地址没有改变。 

此库的 OwningRef、OwningRefMut 通过两个成员，将所有者和引用捆绑在一个包装器类型中来实现此安全使用，该包装器类型确保生存期约束。

```rust,ignore
extern crate owning_ref;

use owning_ref::{BoxRef, OwningRef};

fn return_owned_and_referenced() -> OwningRef<Vec<u8>, [u8]> {
    let v = vec![1, 2, 3, 4];
    // {owner: vec![1,2,3,4], reference[1,2,3,4]}
    let or = OwningRef::new(v);
    // {owner: vec![1,2,3,4], reference[2,3]}
    let or = or.map(|v| &v[1..3]);
    or
}

fn owned_referenced_v1() -> OwningRef<String, str> {
    let mut s = String::from("Hello world!");
    let or = OwningRef::new(s);
    let or = or.map(|v| &v[0..5]);
    or
}

fn owned_referenced_v2() -> Result<OwningRef<Box<[i32;4]>, i32>, ()> {
    let owning_ref = OwningRef::new(Box::new([1, 2, 3, 4]));
    let owning_ref = owning_ref.map(|array| &array[2]);

    let owning_ref = owning_ref.try_map_with_owner(|array, _prev| {
        if array[1] == 2 { Ok(&array[1]) } else { Err(()) }
    });
    // assert_eq!(*owning_ref.unwrap(), 2);
    owning_ref
}
```

根据 new 方法定义，传入的是 `Vec[u8]`，所以 reference 成员是 `&*Vec[u8]` 即 `[u8]`，如果传入的是 String，那么 `&*String` 得到的类型就是 `str`。

当然，如果传入的是一个引用，那么就又回到前面的问题了，所有权不允许返回一个引用。



## ⚡ I/O & Command Line
- https://doc.rust-lang.org/book/ch12-00-an-io-project.html
- https://doc.rust-lang.org/book/ch12-06-writing-to-stderr-instead-of-stdout.html

和其它语言一样，Rust 也有 Standard Output 和 Standard Error 两种输出标准，默认输出是控制台，通常可以使用重定向将默认输出定向到文件：

    cargo run > output.txt

这样，println 这类打印信息就会写入到文件，但不会响应错误信息。

    eprintln!("Application error: {}", e);


### 🟢🔵 CLI Arguments
- https://doc.rust-lang.org/stable/std/env/index.html
- https://doc.rust-lang.org/book/ch12-01-accepting-command-line-arguments.html
- https://doc.rust-lang.org/book/ch12-05-working-with-environment-variables.html

和 C++ 语言不同，Rust 的 main() 函数不通过参数列表接收程序运行时传入的参数，而是通过环境变量的方式读取，可以使用 env 读取其它环境变量：

```rust,ignore
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    let version = env!("CARGO_PKG_VERSION");

    let query = &args[1];
    let filename = &args[2];

    println!("Command Line arguments: {:?}", args);
    println!("Package version: {}", version);

    println!("Searching for {}", query);
    println!("In file {}", filename);
}
```

要点：

- `Vec<String>` 字符串向量，引用 args() 返回的 Args 结构体集合；
- `&args[0]` 借用参数引用，因为外部传入的 String 所有权不能转移；
- `{:?}` 打印模板使用通配符号打印多个值；


示范使用 std::fs 标准模块来读取文件，通过 `read_to_string()` 静态方法：

```rust,ignore
use std::env;
use std::fs;

fn main() {
    let args: Vec<String> = env::args().collect();
    let filename = &args[1];
    println!("In file {}", filename);

    let contents = fs::read_to_string(filename)
        .expect("Something went wrong reading the file");

    println!("With text:\n{}", contents);
}
```

模块 env 导出函数：

- `args`    返回所有命令行参数，字符串类型为 String。
- `args_os` 返回所有命令行参数，字符串类型为 std::ffi::OsString。
- `current_dir` Returns the current working directory as a PathBuf.
- `current_exe` Returns the full filesystem path of the current running executable.
- `home_dir`    DeprecatedReturns the path of the current user's home directory if known.
- `join_paths`  Joins a collection of Paths appropriately for the PATH environment variable.
- `remove_var`  Removes an environment variable from the environment of the currently running process.
- `set_current_dir` Changes the current working directory to the specified path.
- `set_var` Sets the environment variable k to the value v for the currently running process.
- `split_paths` Parses input according to platform conventions for the PATH environment variable.
- `temp_dir`    Returns the path of a temporary directory.
- `var` 根据 key 获取对应的环境变量，返回 `Result<String, VarError>`。
- `var_os`  根据 key 获取对应的环境变量，返回 `Option<OsString>`。
- `vars`    获取的所有的环境变量，返回一个迭代器，元素是 (variable, value) 字符串类型为 String。
- `vars_os` 获取的所有的环境变量，返回一个迭代器，元素是 (variable, value) 字符串类型为 std::ffi::OsString。


### 🟢🔵 Shell 命令执行
- https://doc.rust-lang.org/stable/std/process/struct.Command.html
- https://docs.microsoft.com/en-US/troubleshoot/cpp/redirecting-error-command-prompt
- BASH Shell Redirect stderr To stdout https://www.cyberciti.biz/faq/redirecting-stderr-to-stdout/
- Clap - Command Line Argument Parser for Rust https://crates.io/crates/clap

Rust 进程标准库提供了与操作系统进程级别的交互能力，提供了 Command 模块来执行外部命令。

标准库提供三个文件来操作进程：

- `process::abort()` 无条件结束进程；
- `process::exit(code: i32)` 退出进程；
- `process::id()` 获取进程 ID；

命令对象 `Command` 和子进程 `Child` 是主要对象，进程标准库都是围着它运转的。

命令对象提供的丰富的方法：

    pub fn new<S: AsRef<OsStr>>(program: S) -> Command
    pub fn arg<S: AsRef<OsStr>>(&mut self, arg: S) -> &mut Command
    pub fn args<I, S>(&mut self, args: I) -> &mut Command
    where
        I: IntoIterator<Item = S>,
        S: AsRef<OsStr>, 
    pub fn env<K, V>(&mut self, key: K, val: V) -> &mut Command
    where
        K: AsRef<OsStr>,
        V: AsRef<OsStr>, 
    pub fn envs<I, K, V>(&mut self, vars: I) -> &mut Command
    where
        I: IntoIterator<Item = (K, V)>,
        K: AsRef<OsStr>,
        V: AsRef<OsStr>, 
    pub fn env_remove<K: AsRef<OsStr>>(&mut self, key: K) -> &mut Command
    pub fn env_clear(&mut self) -> &mut Command
    pub fn current_dir<P: AsRef<Path>>(&mut self, dir: P) -> &mut Command
    pub fn stdin<T: Into<Stdio>>(&mut self, cfg: T) -> &mut Command
    pub fn stdout<T: Into<Stdio>>(&mut self, cfg: T) -> &mut Command
    pub fn stderr<T: Into<Stdio>>(&mut self, cfg: T) -> &mut Command
    pub fn spawn(&mut self) -> Result<Child>
    pub fn output(&mut self) -> Result<Output>
    pub fn status(&mut self) -> Result<ExitStatus>

    🔬 nightly-only experimental API
    pub fn get_program(&self) -> &OsStr
    pub fn get_args(&self) -> CommandArgs<'_>
    pub fn get_envs(&self) -> CommandEnvs<'_>
    pub fn get_current_dir(&self) -> Option<&Path>

常用方法：

- new 创建命令对象；
- arg/args 设置命令参数；
- env/envs 设置命令环境变量；
- spawn 当作子进程执行命令，返回一个子进行句柄；
- output 当作子进程执行命令，等待完成并捕捉输出数据对象；
- status 当作子进程执行命令，等待完成并获取状态；

而子进程对象本身只提供了 4 个方法。

    pub fn kill(&mut self) -> Result<()>
    pub fn id(&self) -> u32
    pub fn try_wait(&mut self) -> Result<Option<ExitStatus>>
    pub fn wait_with_output(self) -> Result<Output>

与子进程交互，免不出需要要处理 stdout, stdin, stderr 等 IO 对象，这些都是子进程的成员。

```rust,ignore
pub struct Child {
    pub stdin:  Option<ChildStdin>,
    pub stdout: Option<ChildStdout>,
    pub stderr: Option<ChildStderr>,
    // some fields omitted
}
```

注意区别，命令或子进程执行完毕，输出的数据保存在 Output 对象。

例如，执行一个 echo 命令，注意，Windows 和 Linux 系统的换行符号分别为 `\r\n`、`\n`。

```rust,ignore
use std::process::Command;

let output = Command::new("echo")
                     .arg("Hello world")
                     .output()
                     .expect("Failed to execute command");

assert_eq!(b"Hello world\n", output.stdout.as_slice());
```

以下示范调用 Linux 系统的 grep 命令，它能对目标文件进行分析并查找相应字符串，并该字符串所在行输出。

```rust,ignore
use std::process::*;
use std::env::args;

fn main() {
    let mut arg_iter = args();
    // panic if there is no one
    arg_iter.next();
    let pattern = arg_iter.next().unwrap_or("main".to_string());
    let pt =  arg_iter.next().unwrap_or("./".to_string());
    let child = Command::new("grep")
        .arg("-n")
        .arg("-r")
        .arg(&pattern)
        .arg(&pt)
        // pipeline to parent
        // .stdout(Stdio::null())
        .stdout(Stdio::piped())
        .spawn().unwrap();

    // wait child to finish
    let out = child.wait_with_output().unwrap();
    let out_str = String::from_utf8_lossy(&out.stdout);
    for line in out_str.split("\n") {
        println!("{}", line);
    }
}
```

上面代码中，虽然使用了 wait_with_output 方法等待子进程，但是输出内容并不能直接被捕捉到。因为子线程会继承父进程的所有句柄，子进程也就会继承父进程的标准输出。

只需要使用 pipe 重定向子线程的标准输出到另外一个输出缓冲区，而不是父进程的 stdout，这样就可以捕捉子进程的输出内容。

Unix/Linux 标准 I/O 流行文件与对应的 ID：

    | Handle |  Name  |   Description   |
    |--------|--------|-----------------|
    |      0 | stdin  | Standard input  |
    |      1 | stdout | Standard output |
    |      2 | stderr | Standard error  |

在命令行中，可以使用这些文件 ID 来做重定向，例如 ls 命令的标准输出到文件：

    # redirect stdout to list.txt
    ls > list.txt
    ls 1> list.txt

    # append stdout to list.txt
    ls -l >> list.txt

例如，将 grep 命令的 stderr 重定向到文件：

    grep -R 'MASTER' $HOME 2> err.txt

同时将 stdout 和 stderr 重定向到文件，注意，后面的`2>&1`表示将 stderr 重定向到 stdout：

    $ ls > list.txt 2>&1

    ## bash only ##
    $ ls &> list.txt

Windows 系统还支持以下这样的语法：

    dir 2>&1 > out.txt
    dir 2> nul
    dir > output.msg 2> output.err
    dir 1> output.msg 2>&1

### 🟢🔵 CLAP 命令行参数解析器
- CLAP - Command Line Argument Parser for Rust https://crates.io/crates/clap
- https://github.com/clap-rs/clap/blob/HEAD/examples/

CLAP 命令行解析工具非常易用，并且用户也多，它提供丰富的功能：

* Generate a CLI simply by defining a struct!
* **Auto-generated Help, Version, and Usage information**
* **Auto-generated completion scripts (Bash, Zsh, Fish, Elvish and PowerShell)**
* **Flags / Switches** (i.e. bool fields)
* **Positional Arguments** (i.e. those which are based off an index from the program name)
* **Option Arguments** (i.e. those that take values)
* **Sub-Commands** (i.e. `git add <file>` where `add` is a sub-command of `git`)
* **Support for building CLIs from YAML**
* **Requirement Rules**: Arguments can define the following types of requirement rules
* **Confliction Rules**: Arguments can optionally define the following types of exclusion rules
* **Groups**: Arguments can be made part of a group
* **Specific Value Sets**: (i.e. a `--mode` option may has two values, such as `--mode fast` or `--mode slow`)
* **Default Values**
* **Automatic Version from Cargo.toml**: use Rust's `env!()` macro to read the version in your Cargo.toml. 
* **Typed Values**: some macros provided by `clap` to get typed values (i.e. `i32`, `u8`, etc.) 
* **Suggestions**: Suggests corrections when the user enters a typo.
* **Colorized Errors (Non Windows OS only)**
* **Global Arguments**: Arguments can optionally be defined once, and be available to all child subcommands.
* **Custom Validations**: You can define a function to use as a validator of argument values.
* **POSIX Compatible Conflicts/Overrides**

配置依赖：

    [dependencies]
    clap = "2.33"

    [dependencies]
    clap = {version = "2.33", features = ["yaml"]}

    [dependencies.clap]
    features = ["yaml"]

后两种配置可以解析 yaml 配置文件。

示范创建一个参数构造器 Builder Pattern：

```rust,ignore
// (Full example with detailed comments in examples/01b_quick_example.rs)
//
// This example demonstrates clap's full 'builder pattern' style of creating arguments which is
// more verbose, but allows easier editing, and at times more advanced options, or the possibility
// to generate arguments dynamically.
extern crate clap;
use clap::{Arg, App, SubCommand};

fn main() {
    let matches = App::new("My Super Program")
                  .version("1.0")
                  .author("Kevin K. <kbknapp@gmail.com>")
                  .about("Does awesome things")
                  .arg(Arg::with_name("config")
                       .short("c")
                       .long("config")
                       .value_name("FILE")
                       .help("Sets a custom config file")
                       .takes_value(true))
                  .arg(Arg::with_name("INPUT")
                       .help("Sets the input file to use")
                       .required(true)
                       .index(1))
                  .arg(Arg::with_name("v")
                       .short("v")
                       .multiple(true)
                       .help("Sets the level of verbosity"))
                  .subcommand(SubCommand::with_name("test")
                              .about("controls testing features")
                              .version("1.3")
                              .author("Someone E. <someone_else@other.com>")
                              .arg(Arg::with_name("debug")
                                  .short("d")
                                  .help("print debug information verbosely")))
                  .get_matches();

    // Gets a value for config if supplied by user, or defaults to "default.conf"
    let config = matches.value_of("config").unwrap_or("default.conf");
    println!("Value for config: {}", config);

    // Calling .unwrap() is safe here because "INPUT" is required (if "INPUT" wasn't
    // required we could have used an 'if let' to conditionally get the value)
    println!("Using input file: {}", matches.value_of("INPUT").unwrap());

    // Vary the output based on how many times the user used the "verbose" flag
    // (i.e. 'myprog -v -v -v' or 'myprog -vvv' vs 'myprog -v'
    match matches.occurrences_of("v") {
        0 => println!("No verbose info"),
        1 => println!("Some verbose info"),
        2 => println!("Tons of verbose info"),
        3 | _ => println!("Don't be crazy"),
    }

    // You can handle information about subcommands by requesting their matches by name
    // (as below), requesting just the name used, or both at the same time
    if let Some(matches) = matches.subcommand_matches("test") {
        if matches.is_present("debug") {
            println!("Printing debug info...");
        } else {
            println!("Printing normally...");
        }
    }

    // more program logic goes here...
}
```

创建解析 yaml 配置文件的示范程序：

```rust,ignore
// (Full example with detailed comments in examples/17_yaml.rs)
//
// This example demonstrates clap's building from YAML style of creating arguments which is far
// more clean, but takes a very small performance hit compared to the other two methods.
#[macro_use]
extern crate clap;
use clap::App;

fn main() {
    // The YAML file is found relative to the current file, similar to how modules are found
    let yaml = load_yaml!("cli.yml");
    let matches = App::from_yaml(yaml).get_matches();

    // Same as previous examples...
}
```

再创建 cli.yml 配置文件，然后使用 `--help` or `-h` 参数运行以上程序即可解析配置文件，解析结果存放于 matches 中：

```yaml
name: myapp
version: "1.0"
author: Kevin K. <kbknapp@gmail.com>
about: Does awesome things
args:
    - config:
        short: c
        long: config
        value_name: FILE
        help: Sets a custom config file
        takes_value: true
    - INPUT:
        help: Sets the input file to use
        required: true
        index: 1
    - verbose:
        short: v
        multiple: true
        help: Sets the level of verbosity
subcommands:
    - test:
        about: controls testing features
        version: "1.3"
        author: Someone E. <someone_else@other.com>
        args:
            - debug:
                short: d
                help: print debug information
```


### 🟢🔵 Files 文件读写
- https://doc.rust-lang.org/book/ch12-02-reading-a-file.html
- https://doc.rust-lang.org/book/ch13-03-improving-our-io-project.html

Rust 提供的 fs::read_to_string 方法只接收一个文件名，它可以将指定文件读入到内存中。

```rust,ignore
#[stable(feature = "fs_read_write", since = "1.26.0")]
pub fn read_to_string<P: AsRef<Path>>(path: P) -> io::Result<String> {
    fn inner(path: &Path) -> io::Result<String> {
        let mut file = File::open(path)?;
        let mut string = String::with_capacity(initial_buffer_size(&file));
        file.read_to_string(&mut string)?;
        Ok(string)
    }
    inner(path.as_ref())
}
```

使用示范：

```rust,ignore
use std::env;
use std::fs;

fn main() {
    let args: Vec<String> = env::args().collect();
  
    if let Ok(config) = parse_config(&args) {
        println!("Searching for {}", config.query);
        println!("In file {}", config.filename);
    
        let contents = fs::read_to_string(config.filename)
            .expect("Something went wrong reading the file");
        println!("{}", contents);
    }
}

struct Config {
    query: String,
    filename: String,
}

fn parse_config(args: &[String]) -> Result<Config, &str> {
    if args.len() != 3 {
        // panic!("Usage: {} query filename", args[0]);
        // cannot return value referencing local variable `s` 
        // let s = format!("Usage: {} query filename", args[0]);
        // return Err(s.as_str());
        return Err("Require query and filename.");
    }
    let query = args[1].clone();
    let filename = args[2].clone();
    return Ok(Config{ query, filename })
}
```

要点：

- 使用模式匹配 if let 进行错误处理，只有 parse_config 返回 Ok 值才继续执行。
- parse_config 函数使用 Result<T, E> 类型，给调用方提供错误处理的机会。

假定 poem.txt 文件包含艾米莉·狄金森的一首诗词内容：

    Emily Dickinson

    I’m Nobody! Who are you?
    Are you – Nobody – too?
    Then there’s a pair of us!
    Don’t tell! they’d advertise – you know!

    How dreary – to be – Somebody!
    How public – like a Frog –  
    To tell one’s name – the livelong June –  
    To an admiring Bog!

执行命令就可以读取文件内容：

    cargo run the poem.txt

注意代码中的 clone 方法，这可以说是一种低效率的做法，当然，对于单次执行或数据量小的情况下可以忽略，但是没必要的复制数据确实是浪费，更有效的做法是直接使用迭代器，env::args 函数返回的 std::env::Args 可以迭代地获取各个命令行参数。

```rust,ignore
let args = env::args();
args.next();

let query = match args.next() {
    Some(arg) => arg,
    None => return Err("Didn't get a query string"),
};

let filename = match args.next() {
    Some(arg) => arg,
    None => return Err("Didn't get a file name"),
};
```



# 🟡🟠 Memory Layout 内存模型
- Rust 内存模型 https://zhuanlan.zhihu.com/p/189694498
- https://github.com/usagi/rust-memory-container-cs

Rust 的内存模型是为了三个颇具挑战的目标服务的：

- 内存安全：能够操作的内存必须保证有效，正常情况下，不可能触发段错误或者发生内存泄漏。
- 性能：高性能的低级代码必须能够使用一些不同的内存分配策略。垃圾回收必须是非强制的，可以使用单独的、基于 GC 的、堆内存分配策略。
- 并发：必须免于内存数据竞争，其他形式的竞争依然可能存在。

c++ 语言内存模型中分为四个区：堆，栈，静态全局变量去，常量区。 

根据 C++ 对象生命周期不同，内存模型有自由存储区，动态区、静态区三种不同的内存区域。

- 自由存储区：局部非静态变量的存储区域，即平常所说的栈；
- 动态区：用 operator new ，malloc 分配的内存，即平常所说的堆；
- 静态区：全局变量 静态变量 字符串常量存在位置；

而代码虽然占内存，但不属于 C++ 内存模型的一部分。



# 🟡🟠 Advanced Features
- Rust的类型系统 https://www.cnblogs.com/Davirain/p/13455953.html

这部分高级内容包括：

- Unsafe Rust: how to opt out of some of Rust’s guarantees and take responsibility for manually upholding those guarantees
- Advanced traits: associated types, default type parameters, fully qualified syntax, supertraits, and the newtype pattern in relation to traits
- Advanced types: more about the newtype pattern, type aliases, the never type, and dynamically sized types
- Advanced functions and closures: function pointers and returning closures
- Macros: ways to define code that defines more code at compile time


## ⚡ Unsafe Rust 
- https://doc.rust-lang.org/book/ch19-01-unsafe-rust.html
- The Rustonomicon - The Dark Arts of Unsafe Rust https://doc.rust-lang.org/nightly/nomicon/index.html
- Rust's Unsafe Code Guidelines Reference https://rust-lang.github.io/unsafe-code-guidelines/introduction.html

Rust 内存安全依赖于强大的类型系统和编译时追踪检测，不过它并不能适应所有的场景。

- 首先，所有的编程语言都需要跟外部的不安全接口打交道，调用外部库等，在安全的 Rust 特性下是无法实现的；
- 其次，安全的 Rust 特性无法高效表示复杂的数据结构，特别是数据结构内部有各种指针互相引用的时候；
- 再次，事实上还存在着一些操作，这些操作是安全的，但不能通过编译器的验证。

因此在安全的 Rust 背后，还需要 unsafe 的支持，不安全标示如果执行它可能会违反 Rust 的内存安全语意，safe != no bug。

Unsafe 模式下不进行安全性检查，意味有一定的性能提升，并且内存的安全将由开发者负责。

Unsafe 语句块能允许程序员做的额外事情有：

- Dereference a raw pointer `&num as *const i32`
- Call an unsafe function or method
- Access or modify a mutable `static` variable
- Implement an unsafe trait
- Access fields of unions

使用这些能力，可以让 Rust 和外部语言进行交互。

```rust,ignore
let x = 5;
let raw = &x as *const i32;
let points_at = unsafe { *raw };
println!("raw points at {}", points_at);

static mut N: i32 = 5;
unsafe {
    N += 1;
    println!("N: {}", N);
}
```

```rust,ignore
unsafe fn danger_will_robinson() {
    // unsafe function
}

unsafe {
    // unsafe block
}

unsafe trait DangerTrait { }
unsafe impl DangerTrait for i32 {}
```

Rust 1.51.0 引入了两个宏，`addr_of` 和 `addr_of_mut` 用来获取变量的常裸指针 const raw pointer。

```rust,ignore
use std::ptr;

#[repr(packed)]
struct Packed {
    f1: u8,
    f2: u16,
}

let packed = Packed { f1: 1, f2: 2 };
// `&packed.f2` would create an unaligned reference, and thus be Undefined Behavior!
let raw_f2 = ptr::addr_of!(packed.f2);
assert_eq!(unsafe { raw_f2.read_unaligned() }, 2);
```


## ⚡ FFI - Foreign Function Interface
- The (unofficial) Rust FFI Guide https://michael-f-bryan.github.io/rust-ffi-guide/overview.html
- Dynamically Sized Types https://doc.rust-lang.org/reference/dynamically-sized-types.html
- Build Scripts https://doc.rust-lang.org/cargo/reference/build-scripts.html
- rustc Command-line arguments https://doc.rust-lang.org/rustc/command-line-arguments.html
- Rust By Example - FFI https://doc.rust-lang.org/rust-by-example/std_misc/ffi.html
- Rust FFI Examples https://github.com/alexcrichton/rust-ffi-examples
- The Rustonomicon - FFI https://doc.rust-lang.org/nomicon/ffi.html
- https://doc.rust-lang.org/stable/std/ffi/index.html
- https://doc.rust-lang.org/stable/std/os/raw/index.html
- https://www.bookstack.cn/read/RustPrimer/ffi-calling-ffi-function.md
- Rust FFI 编程 - FFI 概述 https://rustcc.cn/article?id=3b8241d0-c4ca-4f49-8e07-0a5142b00f59
- The `bindgen` User Guide https://rust-lang.github.io/rust-bindgen/introduction.html

作为系统级编程语言，与其它语言进行交流是很基本的能力，Rust FFI 就是做这个工作的。

FFI 这个术语最早来自 Common Lisp 的规范，不同语言称呼这种语言间调用的功能名字可能不同。Common Lisp、Haskell、Python、Rust 这些叫 FFI，Java 叫 JNI 或 JNA，还有一些其它语言叫绑定 Binding。严格来说，FFI 与 绑定，意义并不相同，绑定可以理解为 FFI 中的一种实现。

所有的语言在编译后，都会以二进制的形式去执行，即使是在虚拟机运行的字节码。如果直接通过二进制进行 FFI，毕竟太底层，实现起来就会很复杂。

因而，ABI - application binary interface 应用程序二进制接口约定就是一个解决方案，定义了调用约定、类型表示和名称修饰。

尽管有了 ABI，但是这个世界上可用的语言很多，它们并不是统一使用同一套 ABI 规范，常见的规范有以下这些：

- cdecl
- syscall
- optlink
- pascal
- register
- stdcall
- fastcall
- thiscall
- winapi
- Intel ABI
- System V

好在，计算机中 C 语言是基石，它提供了大量的代码遗产，Rust 可以在连接库的层次与 C 语言相互调用。

例如，调用 C 标准函数，Rust 提供了相应的实现，默认会链接 libc 和 libm 标准库：

```rust,ignore
extern "C" {
    fn abs(input: i32) -> i32;
}

fn main() {
    unsafe {
        println!("Absolute value of -3 according to C: {}", abs(-3));
    }
}
```

这里的 extern "C" 代码块定义了外部语言的函数列表，这些函数总是 unsafe，其中 "C" 表示外部程序使用的 ABI，这里表示的是 C 语言规范。

如果，需要从 C/C++ 语言中调用 Rust 函数，则需要标注 `#[no_mangle]`，以避免函数被改名。Mangling 是对向对象语言的一种符号重命名特性，像 C++ 这样的语言，编译时会将对象的方法名称进行规则的生命名。重命名后，根据函数名称就可以知道这个函数签名信息，如有几个参数，什么参数类型等。

```rust,ignore
#[no_mangle]
pub extern "C" fn call_from_c() {
    println!("Just called a Rust function from C!");
}
```

调用非标准 C 库函数，则需要使用 `#[link(name = "libname")]`。

- `#[link(name = "libname")]` Dynamic Library
- `#[link(name = "libname", kind = "static")]` Static Library
- `#[link(name = "libname", kind = "framework")]` MacOS Framework

在 Rust 工程中创建 hello 目录作为 C 程序，编写 hello.c 演示函数，编译生成链接库 hello.lib 或 libhello：

```rust,ignore
// fatal error LNK1107: invalid or corrupt file: cannot read at 0x8
// #include <cstdio> 
#include <stdio.h> 

typedef struct {
    unsigned char a;
    int b;
} Object;

Object add(Object it){
    it.a++;
    it.b++;
    return it;
}

int greet(int it){
    // error LNK2019: unresolved external symbol printf
    // printf("Hello %d!\n", 2);
    printf("Hello from C!\n");
    return it + 1;
}
```

测试代码使用带参数的 printf 会导致符号失踪，使用的是 MinGW GCC 编译器，未知具体原因。 

然后在 Rust 主程序 src/main.rs 引用以上的 C 函数，编译时会引用 hello.lib 库中的符号：

```rust,ignore
use std::os::raw::c_int;

#[link(name = "hello")]
extern {
    fn add(it: RustObject) -> RustObject;
    fn greet(it: i32) -> c_int;
}

#[repr(C)]
#[derive(Debug, Clone)]
pub struct RustObject{
    a: u8,
    b: i32,
}

fn main() {
    unsafe {
        let mut it:RustObject = RustObject{a:255, b:1};
        let b = it.clone();
        println!("{:?} => {:?}", b, add(it));
        assert_eq!(2, greet(1));
    }
}
```

为了更自动化一点，可以在工程目录下创建 build.rs 脚本调用 C/C++ 编译命令，Cargo 会执行它：

```rust,ignore
use std::env;
use std::process::Command;
use std::path::Path;

fn main() {
    let out_dir = env::var("OUT_DIR").unwrap();
    println!("cargo:rustc-link-search=native={}", out_dir);
    println!("cargo:rustc-link-lib=static=hello");
 
    Command::new("cc").args(&["hello/hello.c", "-O3","-c", "-fPIC", "-o"])
        .arg(&format!("{}/hello.o", out_dir))
        .status().unwrap();
 
    Command::new("ar").args(&["crus", "libhello.a", "hello.o"])
        .current_dir(&Path::new(&out_dir))
        .status().unwrap();
}
```

其中，`OUT_DIR` 是 Rust 编译自动配置的环境变量，表示当前编译输出目录，在 Windows 平台上，可以安装 MinGW GCC 编译工具，使用 `gcc` 命令替换 `cc` 命令，库文件输出 `libhello.a` 可以用 `hello.lib` 替代。也可以使用 cc crate 提供的编译能力，它可以编译 C/C++/assembly 生成库文件供 Rust 程序使用。

通过打印标准输出，Build scripts 可以与 Cargo 通信，打印输出格式要求 `cargo:` 开头：

- `cargo:rerun-if-changed=PATH` — Tells Cargo when to re-run the script.
- `cargo:rerun-if-env-changed=VAR` — Tells Cargo when to re-run the script.
- `cargo:rustc-link-lib=[KIND=]NAME` — Adds a library to link, KIND can be `dylib`, `static`, or `framework`.
- `cargo:rustc-link-search=[KIND=]PATH` — Adds to the library search path, KIND can be `dependency`, `crate`, `native`, `framework`, `all`.
- `cargo:rustc-flags=FLAGS` — Passes certain flags to the compiler.
- `cargo:rustc-cfg=KEY[="VALUE"]` — Enables compile-time cfg settings.
- `cargo:rustc-env=VAR=VALUE` — Sets an environment variable.
- `cargo:rustc-cdylib-link-arg=FLAG` — Passes custom flags to a linker for cdylib crates.
- `cargo:warning=MESSAGE` — Displays a warning on the terminal.
- `cargo:KEY=VALUE` — Metadata, used by links scripts.

Rust 在 OS 标准库 std::os::raw 提供了 C 语言的各种上类型定义，可以在声明 extern 接口时使用：

- `c_char`  等价 `char`
- `c_double`    等价 `double`
- `c_float` 等价 `float`
- `c_int`   等价 `signed int` (`int`)
- `c_long`  等价 `signed long `(`long`)
- `c_longlong`  等价 `signed long long` (`long long`)
- `c_schar` 等价 `signed char`
- `c_short` 等价 `signed short` (`short`)
- `c_uchar` 等价 `unsigned char`
- `c_uint`  等价 `unsigned int`
- `c_ulong` 等价 `unsigned long`
- `c_ulonglong` 等价 `unsigned long long`
- `c_ushort`    等价 `unsigned short`

还 Linux/Unix/Windows 平台差异特性模块。

Rust 不支持 C++ FFI 无法调用类构造，需要编写 C 接口的转换层，然后绑定。


Rust 是一种神奇的语言，有着更好的生态系统。许多 Rust 的设计决策都非常适合向现有的 C/C++ 系统添加新功能，或者逐步替换这些系统的部分。

而现有的一些代码也可以进行 Binding 以代 Rust 调用，如 OpenGL 这类的 C/C++ API。

有一些不错的工具，它们有助于减少样板，并自动化容易出错的类型和函数绑定，比如：

- `bindgen` automatically generates Rust FFI bindings to C (and some C++) libraries.
- `cbindgen` creates C/C++11 headers for Rust libraries which expose a public C API.
- `cpp` rust-cpp - Embed C++ code directly in Rust.

Rust 中使用 `cpp` crate 定义的 `cpp!` 宏来嵌入 C++ 代码，它通过获取所有的内联 C++ 代码并将其写入一个单独的 cpp 文件来实现这一点，该文件将被编译为 Rust crate 的最终目标代码。

当将 Rust 库绑定到 C/C++ 时，核心逻辑层和 FFI 层之间应该存在明显的分离。在做好的情况下，FFI 代码应该位于一个单独的 crate 中，因此设计 Rust API 不会受到 FFI 的太多影响，并且选择可变性修饰符变得更加容易。


## ⚡ Type Layout
- Type Layout https://doc.rust-lang.org/reference/type-layout.html
- Data Representation in Rust https://doc.rust-lang.org/nomicon/data.html
- The Rustonomicon - Data Layout https://doc.rust-lang.org/nomicon/repr-rust.html
- Rust's Unsafe Code Guidelines Reference https://rust-lang.github.io/unsafe-code-guidelines/introduction.html

类型布局 Type layout 是指类型在内存存储的相关信息，包括以下三部分内容：

- size 大小，表示占用内存字节数。
- alignment 对齐，用字节数计量，最小值为 1，按 2 次方增加，表示在内存地址的开始位置要求，如 u32 为 4 bytes 对齐，其内存地址就要满足整除以 4。
- relative offsets of fields 字段偏移，用户定义类型的字段，如果连续保存满足不了对齐需求，则需要一个偏移。

所有原始值类型都是 `Sized` 类型，即固定大小，使用 std::mem::size_of/size_of_val 方法可以获取其字节数：

    |     Type    | size_of::<Type>() |
    |-------------|-------------------|
    | bool        |                 1 |
    | u8 / i8     |                 1 |
    | u16 / i16   |                 2 |
    | u32 / i32   |                 4 |
    | u64 / i64   |                 8 |
    | u128 / i128 |                16 |
    | f32         |                 4 |
    | f64         |                 8 |
    | char        |                 4 |

而 `usize` and `isize` 这两个特殊一点，和程序运行机器的最大寻址能力相关，如 32 bit 系统就是 4 bytes，而在 64 bit 系统上就是 8 bytes。

Rust 提供了以下组合类型：

- structs (named product types)
- tuples (anonymous product types)
- arrays (homogeneous product types)
- enums (named sum types -- tagged unions)
- unions (untagged unions)

固定类型中，有一种特殊情形，就是零大小类型 ZST - Zero Sized Types：

```rust,ignore
enum Void {} // Empty Type

struct Nothing; // No fields = no size

// All fields have no size = no size
struct LotsOfNothing {
    foo: Nothing,
    qux: (),      // empty tuple has no size
    baz: [u8; 0], // empty array has no size
}
```

所有非 `Sized` 类型都是 DST - Dynamically Sized Types，可以使用 `?Sized` 表示。

Rust 提供以下两种 DST 类型：

- Trait Objects，如 `dyn MyTrait`。
- 切片类型，如 `[T]`, `str` 等。

使用 std::mem::align_of/align_of_val 方法可以获取各种类型的对齐字节数，大多数原始值类型都按它们的大小对齐，这是系统行为。特别地，在 x86 系统，u64 和 f64 按 32 bits 即 4 字节对齐。

现代计算机内存空间以字节为基本单位，理论上可以从任何地址开始访问数据，但实际考虑读写效率，在访问特定类型变量的时候经常在特定的内存地址访问，这就需要各种类型数据按照一定的规则在空间上排列，而不是顺序的一个接一个的排放，这就是对齐。

其它一些类型布局：

- 指针和引用有相同的布局，引用固定大小类型，则布局等同于 usize。引用 DST 类型，则布局是 usize 的双倍大小，即胖指针。
- Array Layout 数组元素具有相同类型，对于数组 [T; n] 大小为 size_of::<T>() * n，对齐等同 T。
- Slice Layout 切片类型布局等同数组切片部分，注意是值类型 [T] 不是引用 &[T], Box<[T]>...
- str Layout 字符串切片是 UTF-8 字符串，数据类型是 [u8]，每个元素的数据类型为 u8，所以类型布局也等同 u8。
- Tuple Layout 无组类型没有布局规则保证，除单位元组 `()` 外，它是 Zero-sized 类型，对齐为 1 字节。
- Trait Object Layout 等同 Trait 对象值本身，注意是对象不是引用 (`&dyn Trait`, `Box<dyn Trait>`, etc.)。
- Closure Layout 闭包没有布局规则保证。

所有用户定义类型 structs, enums, unions 可以通过 Data Representation 数据表达来指定类型布局，有四类布局表达：

- 默认的 Rust 数据表达，不使用 repr 标注。
- 兼容 C 语言的数据表达 `#[repr(C)]`
- 原始类型表达，如 `#[repr(usize)]`。
- 透明表达 `#[repr(transparent)]` 只有单个非零大小字段的 struct 或 enum 使用，或者对齐为 1 字节的 Zero-sized 字段，如 PhantomData<T>。

其中，C 数据表达引入的目的有两个：一是为了和 C 语言交互，二是创建类型，以在这些类型上可靠地执行依赖于数据布局的操作，例如将值重新解释为不同的类型。

通过指定 align、packed 来抬升、降低 structs 和 unions 的对齐，packed 还可以变更字段间的填充。对于一个用户定义类型，对齐取值于占用字节最大的字段，如果 align 指定了一个小于实实际对齐的值，则无效。如果 packed 指定的值大于实际对齐值，则无效。align 和 packed 只可以用于默认的 Rust 数据表达和 C 语言数据表达。

通过 `#[repr(align(x))]` or `#[repr(packed(x))]` 指定具体值，且取值范围 [1, 2^29]。对于 packed 指定方式，可以省略数值表示 1 字节对齐 `#[repr(packed)]`。


指定 union 类型的数据表达：

```rust,ignore
#[repr(C)]
union Union {
    f1: u16,
    f2: [u8; 4],
}

assert_eq!(std::mem::size_of::<Union>(), 4);  // From f2
assert_eq!(std::mem::align_of::<Union>(), 2); // From f1

#[repr(C)]
union SizeRoundedUp {
   a: u32,
   b: [u16; 3],
}

assert_eq!(std::mem::size_of::<SizeRoundedUp>(), 8);  // Size of 6 from b,
                                                      // rounded up to 8 from
                                                      // alignment of a.
assert_eq!(std::mem::align_of::<SizeRoundedUp>(), 4); // From a
```

可以组合 C 和原始类型数据表达：

```rust,ignore
enum EnumDefault {
    Variant0(u8),
    Variant1,
}

#[repr(C)]
enum EnumC {
    Variant0(u8),
    Variant1,
}

#[repr(C, u8)]
enum Enum8 {
    Variant0(u8),
    Variant1,
}

#[repr(C, u16)]
enum Enum16 {
    Variant0(u8),
    Variant1,
}

// One byte for Variant0 and one byte for Variant1
assert_eq!(std::mem::size_of::<EnumDefault>(), 2);
// The size of the C representation is platform dependant
assert_eq!(std::mem::size_of::<EnumC>(), 8);
// One byte for the discriminant and one byte for the value in Enum8::Variant0
assert_eq!(std::mem::size_of::<Enum8>(), 2);
// Two bytes for the discriminant and one byte for the value in Enum16::Variant0
// plus one byte of padding.
assert_eq!(std::mem::size_of::<Enum16>(), 4);
```

对于同一个结构体，C 数据表达和 Rust 默认数据表达差别在于，前者类型布局是按字段顺序保存的，后者则会调整字段顺序进行优化减小内存：

```rust,ignore
#[repr(C)]
pub struct RustObject{
    a: i8,
    b: i8,
    c: i32,
    d: i32,
}

let o = RustObject{a:1, b:2, c:3, d:4}; 
assert!(12, std::mem::size_of_val(&o));
//                         #[repr(C)]       Default
println!("{:p}", &o);   // 0x8d8358f6d8     0x70a66ff8c8
println!("{:p}", &o.a); // 0x8d8358f6d8     0x70a66ff8d0
println!("{:p}", &o.b); // 0x8d8358f6d9     0x70a66ff8d1
println!("{:p}", &o.c); // 0x8d8358f6dc     0x70a66ff8c8
println!("{:p}", &o.d); // 0x8d8358f6e0     0x70a66ff8cc
```

对于同样的类型，其大小和对齐都是一样的，以上的结构体按最大的字段 i32 即 4 字节对齐，两个 i8 类型字段 roundup 为一个 i32，所以整个结构体大小为 12 bytes，但是 i8 数据类型本身按 1 字节进行对齐。

可以观察到，在 `#[repr(C)]` 方式中，字段 b 到 c 的间隔是 3 个字节，i8 本身占 1 一个字节，而另外 2 个字节就是字段 c 的偏移，这是为了确保 i32 类型字段对齐到 4 字节的内存地址上。

偏移计算规则是按字段顺序计算的，首先，初始偏移为 0，先确定当前字段的大小和对齐，如果当前偏移不是当前字段对齐的整数倍，则填充字节使其为整数倍。填充字节数据累加到偏移值上，那么当前的偏移值就是当前字段的偏移值，然后将当前字段的大小累加到偏移值上，其它字段依样处理。


## ⚡ Advanced traits
- Traits Defining Shared Behavior https://doc.rust-lang.org/book/ch10-02-traits.html
- Advanced Traits https://doc.rust-lang.org/book/ch19-03-advanced-traits.html
- The Iterator Trait and The Next Method https://doc.rust-lang.org/book/ch13-02-iterators.html

选来看迭代器 Trait 的定义：

```rust,ignore
pub trait Iterator {
    type Item;

    fn next(&mut self) -> Option<Self::Item>;
}
```

这里的 Item 是什么类型呢？不知道，因为没有办法是什么类型在使用迭代器，这个类型就叫作 Associated types，出现在这个位置就叫做占位，也只可以叫作 placeholder type。就是先占个类型位置，等到具体类型调用时就用实现的类型填进来。所以现在不需要关心它具体是什么类型，调用 `next()` 方法后，通过 Option 枚举类型包装具体的值。

使用泛型参数，可以给这个泛型设置默认类型，参考如内置的 + 操作运行符号定义：

```rust,ignore
trait Add<Rhs=Self> {
    type Output;

    fn add(self, rhs: Rhs) -> Self::Output;
}
```
Rhs 表示 Right hand side，即右值类型，这个格式 `<T=SomeType>` 也叫做 default type parameters。

以下示范实现 Millimeters + Meters 运算：

```rust,ignore
use std::ops::Add;

struct Millimeters(u32);
struct Meters(u32);

impl Add<Meters> for Millimeters {
    type Output = Millimeters;

    fn add(self, other: Meters) -> Millimeters {
        Millimeters(self.0 + (other.0 * 1000))
    }
}
assert_eq!((Millimeters(1000) + Meters(1001)).0, 1002000);
dbg!((Millimeters(1000) + Meters(1001)).0);
```

默认类型参数主要的用途：

- 扩展类型而无需破坏现有代码；
- 定制非常用的特殊功能；

```rust,ignore
trait Add<Rhs=Self> {
    type Output;

    fn add(self, rhs: Rhs) -> &'static str;
}

impl Add<Self> for bool {
    type Output = bool;
    fn add(self, other: Self) -> &'static str {
        if self && other { "TT" } else { "FF" } 
    }
}
println!("Boolean + {}", true.add( true));
```

Rust 允许对象实现多个 Trait 且它们有相同的方法定义，同时也提供了消除歧义的调用语法，同时多态机制也完全体现在类型声明中：

```rust,ignore
trait Pilot {
    fn fly(&self);
}

trait Wizard {
    fn fly(&self);
}

struct Human;

impl Pilot for Human {
    fn fly(&self) {
        println!("This is your captain speaking.");
    }
}

impl Wizard for Human {
    fn fly(&self) {
        println!("Up!");
    }
}

impl Human {
    fn fly(&self) {
        println!("*waving arms furiously*");
    }
}

let person = Human;
person.fly();           // Human fly()
Pilot::fly(&person);    // Pilot fly()
Wizard::fly(&person);   // Wizard fly()

wizard_fly(&person);
pilot_fly(&person);

fn wizard_fly(it: &impl Wizard) {
    it.fly();
}
fn pilot_fly(it: &dyn Pilot) {
    it.fly();
}
```

再接着上面的例子扩展：

```rust,ignore
trait Super: Pilot + Wizard { }

impl Super for Human {}

fn super_fly(it: &dyn Super) {
    // multiple applicable items in scope
    // it.fly(); it can't fly
}
```
如果为 Human 实现一个 Super Trait 它同时继承 Pilot + Wizard，那么再通过 Super 调用 `fly()` 方法就不行了，因为歧义消除不了，编译器不知道要执行哪个方法。

如果，多态分歧发生在静态方法中，那么就需要对类型作泛型转换注解：

```rust,ignore
trait Animal {
    fn baby_name() -> String;
}

struct Dog;

impl Dog {
    fn baby_name() -> String {
        String::from("Spot")
    }
}

impl Animal for Dog {
    fn baby_name() -> String {
        String::from("puppy")
    }
}

println!("A baby dog is called a {}", Dog::baby_name());
println!("A baby dog is called a {}", <Dog as Animal>::baby_name());
```

因为 Trait 是不能作为具体类型来执行方法的，如 `Animal::baby_name()` 这种行为是不能实现的，实现 Animal 的类型可以有一大堆，这种语法结构无法让编译器知道在调用方法。

类型注解语法格式如下：

    <Type as Trait>::function(receiver_if_method, next_arg, ...);

Trait 的继承关系可以将其它 Trait 行为引用过来，包含其它 Trait 功能的也叫做 Supertraits。

在官方文档中并没有用继承这个词去描述，这个词也不恰当，因为 Trait 的这种关联是一种组合约束，并不像 C++ 那样的类型之间的继承：

```rust,ignore
use std::fmt;

struct Point {
    x: i32,
    y: i32,
}

impl fmt::Display for Point {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "({}, {})", self.x, self.y)
    }
}

impl OutlinePrint for Point {}

trait OutlinePrint: fmt::Display {
    fn outline_print(&self) {
        let output = self.to_string();
        let len = output.len();
        println!("{}", "*".repeat(len + 4));
        println!("*{}*", " ".repeat(len + 2));
        println!("* {} *", output);
        println!("*{}*", " ".repeat(len + 2));
        println!("{}", "*".repeat(len + 4));
    }
}

Point{ x:0, y:0 }.outline_print();
```

前面解析重载时，提到不可以为第三方 Crate 实现第三方的 Trait，这避免了侵入式代码来破坏现有的代码。

但是，有时候第三方提供的对象功能确实需要进行修改以适应需要，例如 Rust 并没有提供 Vec[T] 类型的 Display 功能。

这就需要变通的方法来算是，可以引入 Newtype 这种类型包装技术，它源于 Haskell 编程语言，使用此模式不会对运行时性能造成任何损失，并且在编译时将省略包装器类型。

```rust,ignore
use std::fmt;

struct Wrapper(Vec<String>);

impl fmt::Display for Wrapper {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "[{}]", self.0.join(", "))
    }
}

let w = Wrapper(vec![String::from("hello"), String::from("world")]);
println!("w = {}", w);
```


## ⚡ Advanced types
- Dynamically Sized Types and the Sized Trait https://doc.rust-lang.org/book/ch19-04-advanced-types.html
- Rc - Reference Counted https://doc.rust-lang.org/stable/std/rc/index.html
- Box - heap allocation https://doc.rust-lang.org/stable/std/boxed/index.html

The Never Type that Never Returns 永远不返回的类型！

Rust 最特殊的类型大概是 Never `!` 记不返回类型，这个要概念源自 lingo 类型理论，它是一个没有值的类型，在 TypeScript 这些现代语言中也有。

一个返回 Never 类型的函数定义示范：

```rust,ignore
fn bar() -> ! {
    // --snip--
}
```

这个代码的意思就是一个返回 Never 的 `bar()` 函数，永不返回的函数叫做发散函数 diverging functions，用感叹号表示因为它没有值。

无限循环的函数体也无法返回值，即返回 never。

回到刚开始的猜数字游戏，其中通过 `math` 匹配输入值的语句中就涉及了 Never 类型：

```rust,ignore
let guess: u32 = match guess.trim().parse() {
  Ok(num) => num,
  Err(_) => continue,
};
```

其中，continue 直接控制了流程跳转，所以通过 `parse()` 函数解析的值并没有返回给 guess 变量，这就是 Never 类型。如果将 continue 替换成其它数据类型返回则不行，因为 guess 定义的是 u32 数值类型。即 `match` 必需返回同一类型，并且 `impl trait` 这样的语法无法在这种语境中使用。

Never 类型通常和 `panic!` 宏一起使用，Option<T> 的 `unwrap()` 方法就使用了它们：

```rust,ignore
impl<T> Option<T> {
    pub fn unwrap(self) -> T {
        match self {
            Some(val) => val,
            None => panic!("called `Option::unwrap()` on a `None` value"),
        }
    }
}
```
如果对一个 None 值执行 `unwrap()` 就会导致程序不知道该怎么走下一步的状况。


Creating Type Synonyms with Type Aliases

使用类型别名以减少重复代码，这是类型别名的主要用途：

```rust,ignore
type Kilometers = i32;

let x: i32 = 5;
let y: Kilometers = 5;

println!("x + y = {}", x + y);
```

以上只是演示如何使用别名，考虑以下这样的类型：

    Box<dyn Fn() + Send + 'static>

如果每一行代码都需要这个类型，那么定义别名就是个好主意：

```rust,ignore
type Thunk = Box<dyn Fn() + Send + 'static>;

let f: Thunk = Box::new(|| println!("hi"));

fn takes_long_type(f: Thunk) {
    // --snip--
}

fn returns_long_type() -> Thunk {
    // --snip--
}
```

在 Rust 内部，函数返回值使用的是 `Result<T, E>` 枚举类型，在 std::io 模块中，泛型参数 E 是指 std::io::Error，那么在使用 io 函数时就可以定义类型别名来简化代码：

```rust,ignore
type Result<T> = std::result::Result<T, std::io::Error>;

pub trait Write {
    fn write(&mut self, buf: &[u8]) -> Result<usize>;
    fn flush(&mut self) -> Result<()>;

    fn write_all(&mut self, buf: &[u8]) -> Result<()>;
    fn write_fmt(&mut self, fmt: fmt::Arguments) -> Result<()>;
}
```

动态大小类型 DST - Dynamically Sized Types，如字符串切片类型 `str`，它本身是 `[u8]`。类似的还有其它的 `[T]` 切片类型也是 DST 类型，包括 Trait 都是：

```rust,ignore
dbg!(size_of::<&u32>());        // 8
dbg!(size_of::<&[u32; 2]>());   // 8
dbg!(size_of::<&[u32]>());      // 16
dbg!(size_of::<&str>());        // 16
```

DST 类型不能直接作为参数使用，以下这种就不能通过编译：

```rust,ignore
// doesn't have a size known at compile-time
let s1: str = "Hello there!";
let s2: str = "How's it going?";
```

注意 `&str` 引用是固定大小的，它是胖指针一个，Rust 字符串字面量是 `&str` 类型，准确地讲是 `&'static str`。

如果 `str` 是固定大小的类型，那么 s1 就会和 s2 拥有同样大小的内存空间，这显然是不能成立的。而 `&str` 引用类型则不同，它作为一个胖指针，不仅有数据存储内存空间的指针，还有数据的大小信息。

类似的关系还出现在切片类型 `Stirng` 身上，字符串类型的数据在内存中以  `[u8]` 切片类型形式存储，就像 str 类型一样，切片类型本身不能在编译期确定大小。

```rust,ignore
let a:String = "Hello";
// doesn't have a size known at compile-time
let slice = a[..];
```

这些编译期无确定大小的类型需要使用指针时，就不能用常规指针，因为它们还涉及额外的大小信息，可以用类似以下的结构表达：

```rust,ignore
struct FatPointer { 
    ptr: *const u32, 
    len: usize,
}
```

因为是普通指针的一倍大，所以也叫作 fat pointer，多出来的空间是用来保存长度信息。

另一种常见的动态类型就是 Trait Object，类型声明形式为 `dyn Trait`，通学需要使用引用 `&dyn Trait` 或者智能指针进行包装 `Box<dyn Trait>`、`Rc<dyn Trait>`。

以下是这些常见 DST 类型的智能指针表达：

- `Box<str>`
- `Rc<str>`
- `Box<dyn Trait>`
- `Rc<dyn Trait>`

它们都是存储在 Heap 内存中的，Rc - Reference Counted 是引用计数，用户自定义的资源回收清理。

为了更好地区别 DST 类型，Rust 会默认地向泛型函数添加隐含的 `Sized` trait 绑定，来声明泛型参数是编译期明确大小的，对于以下这个泛型函数：

```rust,ignore
fn generic<T>(t: T) {
    // --snip--
}
```

它的实际形式如下：

```rust,ignore
fn generic<T: Sized>(t: T) {
    // --snip--
}
```

对于 DST 泛型参数类型，使用 `?Sized` 表示：

```rust,ignore
fn generic<T: ?Sized>(t: &T) {
    // --snip--
}
```

Trait 绑定 `?Sized` 后，就表示一个 DST 类型，即泛型参数 T 可以是、也可以不是 Sized 类型，这种语法只对于 Sized Trait 绑定有效。


<!-- 固定大小的 Sized Trait， -->


## ⚡ Closures 闭包
- https://doc.rust-lang.org/book/ch19-05-advanced-functions-and-closures.html
- https://doc.rust-lang.org/rust-by-example/fn/closures.html
- https://doc.rust-lang.org/stable/std/ops/trait.Fn.html
- https://doc.rust-lang.org/stable/reference/types/closure.html
- Finding Closure in Rust https://huonw.github.io/blog/2015/05/finding-closure-in-rust/
- Functional Language Features: Iterators & Closures https://doc.rust-lang.org/book/ch13-00-functional-features.html
- Closures: Anonymous Functions that Can Capture Their Environment https://doc.rust-lang.org/book/ch13-01-closures.html
- Why Rust Closures are Hard https://stevedonovan.github.io/rustifications/2018/08/18/rust-closures-are-hard.html
- Higher-Rank Trait Bounds (HRTBs) https://doc.rust-lang.org/nomicon/hrtb.html
- 理解 Rust 中的 Closure https://zhuanlan.zhihu.com/p/64417628

函数可以用指针调用，即函数可以像普通变量一样传递：

```rust,ignore
fn add_one(v: i32) -> i32 {
    v + 1
}

fn do_twice(f: fn(i32) -> i32, v: i32) -> i32 {
    f(v) + f(v)
}

fn main() {
    let answer = do_twice(add_one, 5);
    print!("answer is {}", answer);
}
```

与闭包不同，关键字 `fn` 是定义一个类型而不是 Fn Trait，用 fn 指定参数类型，而不是声明一个泛型参数去绑定 Trait。

闭包就是一个结构记录，它保存一个函数与当前环境关联。语法上相当是一个匿名函数，有时候也称作 lambda 表达式。

语法格式 `|val| exps`，典型标志是两条竖线，其特征如下：

- 使用 `||` 包括参数列表，而不是 `()`；
- 函数体可选的花括号 `{}`，对于单个表达的闭包非常易用，比如只反回一个数值的闭包 `|i: i32| -> i32 { i + 1 };`；
- 捕捉作用域环境的能力，可以自动处理所有权的移动、借用，根据所有权处理方式不同而实现的；
    - `Fn`: 闭包捕捉引用 `&T`；
    - `FnMut`: 闭包捕捉可变引用 `&mut T`；
    - `FnOnce`: 闭包捕捉所有权 `T`，对应简写形式 `move ||`；

而默认的捕获选择顺序：

- 如果可以，则尽量用 & 借用；
- 否则，如果可以，则总是 &mut 借用；
- 最后，无计可施必须要 ownership 的话，才会 move；

另外，闭包也可以像其它变量一样，有共享引用、可变引用的表达形式：

- 闭包共享引用形式 `& ||`；
- 闭包可变引用形式 `&mut ||`；

Rust 内存模型中的数据有三处存储类型：栈上、托管堆上、以及交换堆上。所以，对应有三种闭包：stack closure、managed closure、owned closure。

前面示范代码中 `do_twice()` 方法可以等价实现为 Fn 方式：

```rust,ignore
fn do_twice<F>(f: F, v: i32) -> i32 
where F: Fn(i32) -> i32
{
    f(v) + f(v)
}
```

函数指针类型实现了 `Fn` `FnMut` `FnOnce` 这三个 Traits 类型，所以哪里需要传入闭包，就可以传入函数指针，如向量列表对象的 map() 方法。

```rust,ignore
let nums = vec![1, 2, 3];
let closure = |i: &i32| i.to_string();
let closure = ToString::to_string;
let strings: Vec<String> = nums.iter().map(closure).collect();
println!("The largest {:?}", strings);
```

可以将 tuple structs 或 tuple-struct enum 中的成员初始化函数作为函数指针来使用：

```rust,ignore
#[derive(Debug)]
enum Status {
    Value(u32),
    Stop,
}
let statuses: Vec<Status> = (0u32..5).map(Status::Value).collect();
println!("The largest {:?}", statuses);
```

上面的示范中，枚举类型的 `Value()` 就是一个初始化函数，它返回的是一个只有一个 u32 值的元组。


在闭包定义中使用 move 关键字，可以强制为闭包捕获所有权：

    let num = 5;
    let owns_num = move |x: i32| x + num;

就算用 move 强制捕获变量的所有权，只要不移走所有权而仅仅是修改或读取变量，这种情况依然会实现 FnMut 或 Fn。

引用网友的示范代码，移动所有权后就无法再 main 函数使用 homu 或 mado：

```rust,ignore
#![allow(unused_variables)]
struct Madoka;
struct Homura;

fn main() {
    let homu = Homura;
    let mado = Madoka;
    let marry = move || {
        (&homu, &mado);
    };
    marry();
    // values used here after move
    let moved = (homu, mado);
}
```

以下示范闭包是如何捕捉外部环境的：

```rust,ignore
use std::mem;

let mut color = String::from("green");

let print = || println!("`color`: {}", color);

// let  _reborrow = &mut color;
// cannot borrow `color` as mutable because it is also borrowed as immutable

// Call the closure using the borrow, one or more time.
print();

// A move or reborrow is allowed after the final use of `print`
let mut _color_moved = color;
let  _reborrow = &mut _color_moved;

// A non-copy type.
let movable = Box::new(2);

// `mem::drop` requires `T` so this must take by value. A copy type
// would copy into the closure leaving the original untouched.
// A non-copy must move and so `movable` immediately moves into
// the closure.
let consume = || {
    println!("`movable`: {:?}", movable);
    mem::drop(movable);
};

// `consume` consumes the variable so this can only be called once.
consume();
```

闭包一旦定义，其使用的变量就会按使用方式转移所有权、或借用所有权，并保存到 print 变量中，因为 `println!` 宏只需要借用 imutable 的变量，所以 color 只是借用所有权给闭包，即使它是 Spring 类型也没有发生所有权转移。

如果是原始值，如数值被闭包使用时，传值会产生 Copy 行为，而 `mem::drop()` 要求传值，所以例子使用了智能指针来打包数值，使其保存在 Heap 内存中，这样可以避免 Copy。注意，上面示范的 `movable` 变量，会被借用又会因 `drop()` 调用产生所有权转移。

所以，后面 `consume` 这个闭包就相当是 `Fn` 加 `FnOnce` 两种情况，如果定义函数需要使用这样的闭包时，就需要相应指明参数类型为 `Fn` 和 `FnOnce`。

```rust,ignore
// let call = |mut f: FnOnce()| { f() };
fn call<F>(mut func: F)
where F: FnOnce()
{
    func();
}
call(consume);
```

### 🟢🔵 Closures Lifetime

关于闭包生命周期，请看 Stackoverflow 上的一个问题：

```rust,ignore
// https://stackoverflow.com/questions/65985081
// temporary value dropped while borrowed

struct Animal<'a> {
    format: &'a dyn Fn() -> (),
}
impl<'a> Animal<'a> {
    // Getting rid of 'a here satisfies the compiler, why?
    pub fn set_formatter(&mut self, _fmt: &'a dyn Fn() -> ()) -> () {}
    pub fn bark(&self) {}
}

fn main() {
    let mut dog: Animal = Animal { format: &|| {()} };
    let x = 0;
    dog.set_formatter(&|| {
        // Commenting this out gets rid of the error. Why?
        println!("{}", x);
    });
    // Commenting this out gets rid of the error. Why?
    dog.bark();
    dbg!(x);
}
```

从编译器提示的错误信息可以得知，闭包引用传入时产生了一个临时变量：

    22 |       dog.set_formatter(&|| {
       |  ________________________^
    23 | |         // Commenting this out gets rid of the error. Why?
    24 | |         println!("{}", x);
    25 | |     });
       | |     ^ - temporary value is freed at the end of this statement
       | |_____|
       |       creates a temporary which is freed while still in use
    26 |       // Commenting this out gets rid of the error. Why?
    27 |       dog.bark();
       |       --- borrow later used here
       |
       = note: consider using a `let` binding to create a longer lived value

要点分析：

- `&||()` 这里定义了一个无返回值的闭包，同时取引用传入了函数作为回调。
- `&||()` 这个闭包引用是 `'static` 生命周期。
- 需要保证闭包捕捉的变量生命周期不短于闭包生命周期。
- ``

The first thing to understand is that &|| () has a 'static lifetime:

fn main() {
    let closure: &'static dyn Fn() = &|| (); // compiles
}



### 🟢🔵 Closures Type Anonymity

闭包具有`类型匿名性`，每个闭包相当于创建一个匿名的结构体，编译器会为它捕获使用到的当前上下文外部的变量然后塞进这个结构体里面。

这也是 Rust 闭包难用的根源：

- Rust 中结构体的可变性以及 lifetime 本身就是复杂的机制。
- Closure 的规则都是隐式的：闭包捕获值的方式，以及所生成的闭包类型都是按照隐式的规则决定的。
- Closure 会捕获整个复合类型，如 struct, tuple 和 enum，而不只是单个字段。

例如，以下的闭包示范：

```rust,ignore
let example_closure = |x| x;

let s = example_closure(String::from("hello"));
let n = example_closure(5);
// expected struct `std::string::String`, found integer
```

在第一个闭包调用表达式执行时，example_closure 的类型就确定下来了，当第二次用不同的参数去调用时，就出现给闭包输入的参数类型不匹配。

这解释了为什么 Rust 中两个参数和返回值一样的闭包是不同的类型，因为它们背后的匿名结构体不同，有着不同的大小、字段和 lifetime。

以下，用等价的结构体来模块闭包，因为外部变量 `c` 有生命周期限制，所以闭包不能长寿过它：

```rust,ignore
let c = 2.0;

let closure = |x: f64| x + c;

struct AnonymClosureType<'a> {
    c: &'a f64
}

impl<'a> AnonymClosureType<'a> {
    fn call(&self, x: f64) -> f64 {
        x + self.c
    }
}
```

前面小节的示范代码中，`do_twice()` 方法可以等价实现为 Fn 方式，但是必需通过泛型方式声明的：

```rust,ignore
fn do_twice<F>(f: F, v: i32) -> i32 
where F: Fn(i32) -> i32
{
    f(v) + f(v)
}
```

尝试用非泛型方式改写会获取提示：

    fn do_twice(f: dyn Fn(i32) -> i32, v: i32) -> i32 { ... }

    the size for values of type `(dyn std::ops::Fn(i32) -> i32 + 'static)` cannot be known at compilation time

就是因为函数接收的闭包类型无法在编译期确定大小，因此不可预测函数在运行时会接收什么类型的闭包。需要通过泛型来实现动态调用（Dynamic Dispatch）的机制，以在运行时确定闭包类型大小。

```rust,ignore
// `F` must be generic.
fn apply<F>(f: F) where
    F: FnOnce() {
    f();
}
```

而使用 `Fn` `FnMut` `FnOnce` 类型的闭包能隐式地从封闭作用域捕获变量，这也带来了相当多的疑惑性。


闭包可以函数的做输入参数，或者输出值。函数可以返回闭包，但是不能直接返回闭包：

    fn returns_closure() -> dyn Fn(i32) -> i32 {
                            ^^^^^^^^^^^^^^^^^^ doesn't have a size known at compile-time
        |x| x + 1
    }

这是因为闭包类型是匿名的，由 Traits 表示，这意味着不能直接返回闭包，或者说返回的装饭类型与声明的返回值类型不是同一类型。可以使用实现相应 Trait 的具体类型作为函数的返回值，闭包作为匿名类型不能这样做。

最新 Rust 2018 提供了两种语法实现 impl Trait 和 dyn Trait，以下两种方式都可以实现闭包的返回：

```rust,ignore
fn returns_closure() -> Box<dyn Fn(i32) -> i32> {
    Box::new(|x| x + 1)
}

fn returns_closure() -> Box<impl Fn(i32) -> i32> {
    Box::new(|x| x + 1)
}
```

impl Trait 和 dyn Trait 分别对应静态分发和动态分发机制，用在返回值类型定义中，表示返回值是实现了 Fn 的类型。


可以将闭包保存到结构体中，以下实现一个阶乘算法的闭包：

```rust,ignore
struct Fact<'s> { 
    f: &'s dyn Fn(&Fact, u32) -> u32 
}
let fact = Fact {
    f: &|fact, x| if x == 0 {1} else {x * (fact.f)(fact, x - 1)}
};

println!("{}", (fact.f)(&fact, 5));
```

因为闭包很好用，但是我们不想付出运行时代价。

Rust 选择「零额外开销」（Zero Overhead）所以必须用这种方式来实现 closure。使用高级抽象的同时保持了性能无损。比如说我们能用很函数式的方法处理迭代器，但最后生成的汇编和手写循环没什么区别。

Rust 提供了 `Box<Fn() -> T>` 和 `Rc` 让你可以手动做到别的语言自动做到的事情。你需要显式使用这些设施，因为这代表额外的开销。

而选择隐式的捕获规则是因为闭包本身被设计出来的目的就是为在某个特定上下文内以短小、简洁而频繁的方式书写。因此采用了这种隐式且最保守的捕获方式，代价就是容易让人摸不着头脑。


以下用 move Closures 闭包实现一个函数逻辑：

```rust,ignore
// const sum = (f, g) => x => f(x) + g(x);
fn sum<F, G>(f: F, g: G) -> Box<(impl Fn(i32) -> i32)>
where F: Fn(i32) -> i32,
G: Fn(i32) -> i32
{
    Box::new(move |x: i32| f(x) + g(x))
}

fn main() {
    let f1 = |x: i32| x * x;
    let f2 = |x: i32| x * 2 + 1;
    let a = sum(f1, f2);
    println!("{}", a(1i32));
    println!("{}", a(2i32));
    println!("{}", a(3i32));
}
```

使用 Box 也是可以的，其实这么写挺蛋疼的，必须要用 trait object，因为闭包的类型是匿名的。如果闭包是传入的，那么传入的类型是可以推倒出来的，如果没有传入，就很麻烦了。


## ⚡ Macros 宏编程
- [The Little Book of Rust Macros](https://veykril.github.io/tlborm/)
- [The Little Book of Rust Macros](https://danielkeep.github.io/tlborm/book/index.html)
- [Introduction to Procedural Macros in Rust](https://tinkering.xyz/introduction-to-proc-macros/)
- [Procedural Macros in Rust 2018](https://blog.rust-lang.org/2018/12/21/Procedural-Macros-in-Rust-2018.html)
- [3.2. Procedural Macros](https://doc.rust-lang.org/reference/procedural-macros.html)
- https://doc.rust-lang.org/rust-by-example/macros.html
- https://doc.rust-lang.org/book/ch19-06-macros.html
- https://doc.rust-lang.org/stable/reference/attributes.html#active-and-inert-attributes
- https://docs.rs/json/0.12.4/json/


首先，不像 C/C++ 的宏定义，只是简单的代码预处理程序，用宏代码替换一下部分源代码。Rust 的宏具有相当复杂的功能，更贴近编译器的语法树处理。

简单地说，Rust 宏就是内嵌的 DSL - Domain Specific Languages 可以让你可以发明自己的语法，编写出可以自行展开的代码，并且还可以实现静态反射功能。

宏的应用是符合 DRY (Don't Repeat Yourself) 软件工程原理的，有轮子的车就让它跑，没有必要重新造轮子，Don't write DRY code!

通过 `macro_rules` 关键字定义的一系列规则，在调用宏时，编译器会先匹配规则，匹配中的 $expansion 才被展开。

除了使用 `macro_rules` 关键字定义宏规则，Rust 有三种宏程序：

- Function-like macros - `custom!(...)` 使用 `#[proc_macro]` 定义；
- Derive macros - `#[derive(CustomDerive)]` 使用 `#[proc_macro_derive]` 定义；
- Attribute macros - `#[CustomAttribute]` 使用 `#[proc_macro_attribute]` 定义；

宏程序使用 Cargo new --lib 命令创建一个库，并且指定 proc-macro 类型，这样才能够使用过程宏：

    [lib]
    proc-macro = true

    [dependencies]
    quote = "1.0"
    syn = "1.0"
    proc-macro2 = "1.0"


宏程序与函数的区别在于后缀的感叹号：

```rust,ignore
macro_rules! $name {
    ($pattern) => {$expansion}; // $rule0 ;
    ($pattern) => {$expansion}; // $rule1 ;
    ($pattern) => {$expansion}; // ...
    ($pattern) => {$expansion}; // $ruleN ;
}
```

宏至少定义一条规则，最后一条规则的分号可省略。

列如，有以下这样一个宏定义：

    macro_rules! four {
        () => {1 + 3};
    }

调用宏时，编译器会匹配到输入为空的条件，包括 `four!()`, `four![]` or `four!{}` 这几种调用形式。

Patterns 可以精确匹配 literal token trees，例如 `4 fn ['spang "whammo"] @_@` 对规则应如下：

    macro_rules! gibberish {
        (4 fn ['spang "whammo"] @_@) => {...};
    }

示范，输入包含 3 个表达式的匹配模板：

    macro_rules! multiply_add {
        ($a:expr, $b:expr, $c:expr) => {$a * ($b + $c)};
    }

匹配模板支持 Captures 功能，语法格式 `$identifier:capture`，capture 表达如下：

- `item`: an item, like a function, struct, module, etc.
- `block`: a block (i.e. a block of statements and/or an expression, surrounded by braces)
- `stmt`: a statement
- `pat`: a pattern
- `expr`: an expression
- `ty`: a type
- `ident`: an identifier is used for variable/function names
- `path`: a path (e.g. `foo`, `::std::mem::replace`, `transmute::<_, int>`, …)
- `meta`: a meta item; the things that go inside `#[...]` and `#![...]` attributes
- `tt`: a single token tree


匹配模板还支持重复，语法格式 `$ ( ... ) sep rep`，这种参数可变的形式称为 Variadic Interfaces：

- `$` is a literal dollar token.
- `( ... )` is the paren-grouped pattern being repeated.
- `sep` is an optional separator token. Common examples are `,`, and `;`.
- `rep` is the required repeat control. 
    - `*` (indicating zero or more repeats)
    - `+` (indicating one or more repeats).

例如，以下定义一个宏用来对参数进行计数：

```rust
macro_rules! count_tts {
    () => {0usize};
    ($_head:tt $($tail:tt)*) => {1usize + count_tts!($($tail)*)};
}
```

参考 fromat 宏定义：

```rust,ignore
    /// # Examples
    ///
    /// ```
    /// format!("test");
    /// format!("hello {}", "world!");
    /// format!("x = {}, y = {y}", 10, y = 30);
    /// ```
    #[macro_export]
    #[stable(feature = "rust1", since = "1.0.0")]
    #[cfg_attr(not(test), rustc_diagnostic_item = "format_macro")]
    macro_rules! format {
        ($($arg:tt)*) => {{
            let res = $crate::fmt::format($crate::__export::format_args!($($arg)*));
            res
        }}
    }
```

示范，输入包含 0 或多条表达式的匹配模板：

```rust,ignore
    #![allow(unused)]

    #[macro_export]
    macro_rules! vec_strs {
        ( 
            // Start a repetition:
            $( $element:expr ), * 
        ) => {
            // Enclose the expansion in a block so that we can use
            // multiple statements.
            {
                let mut v = Vec::new();

                // Start a repetition:
                $(
                    // Each repeat will contain the following statement, with
                    // $element replaced with the corresponding expression.
                    v.push(format!("{}", $element));
                )*

                v
            }
        };
    }

    fn main() {
        println!("The vector is {}", vec_strs!(1, 2, 3, 4).join(" "));
    }
```

使用 `#[macro_export]` 元数据标注表示无论何时，这个宏对象对 crate 作用域都有效。 


### 🟢🔵 proc_macro 过程宏程序

除了使用 `macro_rules` 关键字定义宏规则，Rust 有三种宏程序：

- Function-like macros - `custom!(...)` 使用 `#[proc_macro]` 定义；
- Derive macros - `#[derive(CustomDerive)]` 使用 `#[proc_macro_derive]` 定义；
- Attribute macros - `#[CustomAttribute]` 使用 `#[proc_macro_attribute]` 定义；

使用 `#[proc_macro]` 定义一个公开函数作为宏程序，函数结构 (TokenStream) -> TokenStream。
函数输入的 TokenStream 就是宏调用时输入的内容，函数同样返回抽象语法树以替代宏调用的内容。

例如，以下创建一个 proc_macro_examples lib 实现一个 `answer()` 函数插入的宏程序：

```rust,ignore
extern crate proc_macro;
use proc_macro::TokenStream;

#[proc_macro]
pub fn make_answer(_item: TokenStream) -> TokenStream {
    "fn answer() -> u32 { 42 }".parse().unwrap()
}
```

定义好过程宏程序后，就可以其它工程上使用，创建一个 Binary Crate 工程测试这个宏程序：

```rust,ignore
extern crate proc_macro_examples;
use proc_macro_examples::make_answer;

make_answer!();

fn main() {
    println!("{}", answer());
}
```

类似地，定义一个可以 Derive macros，可以使用 proc_macro_derive 来定义：

```rust,ignore
extern crate proc_macro;
use proc_macro::TokenStream;

#[proc_macro_derive(AnswerFn)]
pub fn derive_answer_fn(_item: TokenStream) -> TokenStream {
    "fn answer() -> u32 { 42 }".parse().unwrap()
}
```

使用 Derive macros 方式有点差别：

```rust,ignore
extern crate proc_macro_examples;
use proc_macro_examples::AnswerFn;

#[derive(AnswerFn)]
struct Struct;

fn main() {
    assert_eq!(42, answer());
}
```

Derive macro 还可以给对象添加辅助属性，derive macro inert helper attributes，这些属性是
惰性的，它们的唯一目的是被输入到定义它们的派生宏中，也就是说，它们可以被所有宏看到。

例如，以下定义了一个什么也不做的辅助属性：

```rust,ignore
#[proc_macro_derive(HelperAttr, attributes(helper))]
pub fn derive_helper_attr(_item: TokenStream) -> TokenStream {
    TokenStream::new()
}
```

演示使用：

```rust,ignore
#[derive(HelperAttr)]
struct Struct {
    #[helper] field: ()
}
```

Attribute macros 定义多了一个输入，第一输入 TokenStream 为属性名后面的内容，第二个 TokenStream 为宏应用对象的剩余部分。

```rust,ignore
#[proc_macro_attribute]
pub fn show_streams(attr: TokenStream, item: TokenStream) -> TokenStream {
    println!("attr: \"{}\"", attr.to_string());
    println!("item: \"{}\"", item.to_string());
    item
}

// src/lib.rs
extern crate my_macro;

use my_macro::show_streams;

// Example: Basic function
#[show_streams]
fn invoke1() {}
// out: attr: ""
// out: item: "fn invoke1() { }"

// Example: Attribute with input
#[show_streams(bar)]
fn invoke2() {}
// out: attr: "bar"
// out: item: "fn invoke2() {}"

// Example: Multiple tokens in the input
#[show_streams(multiple => tokens)]
fn invoke3() {}
// out: attr: "multiple => tokens"
// out: item: "fn invoke3() {}"

// Example:
#[show_streams { delimiters }]
fn invoke4() {}
// out: attr: "delimiters"
// out: item: "fn invoke4() {}"
```

接下来，使用第三方模块编写过程宏，在 Rust stable 版本里，需要借助三个 crate：

- `syn`，这个是用来解析语法树(AST)的。各种语法构成
- `quote`，解析语法树，生成 Rust 代码，从而实现你想要的新功能。
- `proc_macro`(std) 和 proc_macro2(3rd-party)

但在 nightly 版本里，以上的这些 crate 都不需要了，不依赖第三方 crate，还有就是语法上是稍微有些不同，大部分是一样的。

创建一个库 hello_macro_derive，并配置依赖，还有设置库类型为 proc-macro，即一个宏库：

    [lib]
    proc-macro = true

    [dependencies]
    syn = "0.14.4"
    quote = "0.6.3"

然后在 hello_macro_derive/lib.rs 文件中自定义宏的功能实现。

```rust,ignore
extern crate proc_macro;

use crate::proc_macro::TokenStream;
use quote::quote;
use syn;

#[proc_macro_derive(HelloMacro)]
pub fn hello_macro_derive(input: TokenStream) -> TokenStream {
    // Construct a representation of Rust code as a syntax tree
    // that we can manipulate
    let ast = syn::parse(input).unwrap();

    // Build the trait implementation
    impl_hello_macro(&ast)
}

fn impl_hello_macro(ast: &syn::DeriveInput) -> TokenStream {
    let name = &ast.ident;
    let gen = quote! {
        impl HelloMacro for #name {
            fn hello_macro() {
                println!("Hello, Macro! My name is {}", stringify!(#name));
            }
        }
    };
    gen.into()
}
```

自定义宏使用的注解是 `#[proc_macro_derive(HelloMacro)]`，其中 HelloMacro 是宏的名称，在
使用时，只需要使用注解 `#[derive(HelloMacro)]` 即可。

在使用时我们应该先引入这两个依赖

    hello_macro_derive = { path = "../hello_macro_derive" }

然后再来使用，这里定义一个 trait 名字 HelloMacro 和方法名对应上面 quote! 宏定义的内容相匹配：

```rust,ignore
use hello_macro::HelloMacro;
use hello_macro_derive::HelloMacro;

pub trait HelloMacro {
    fn hello_macro();
}

#[derive(HelloMacro)]
struct Pancakes;

fn main() {
    Pancakes::hello_macro();
}
```


### 🟢🔵 TokenStream 语法树数据流处理
- https://docs.rs/syn/1.0.1/syn/
- https://docs.rs/quote/1.0.0/quote/
- https://doc.rust-lang.org/proc_macro/
- https://docs.rs/proc-macro2/1.0.0/proc_macro2/

在这里，很有必要从编译器语法树构建原理的角度来解析宏的概念。

Rust 系统中有许多类型的 Tokens：

- Identifiers: foo, Bambous, self, we_can_dance, LaCaravane, …
- Integers: 42, 72u32, 0_______0, …
- Keywords: _, fn, self, match, yield, macro, …
- Lifetimes: 'a, 'b, 'a_rare_long_lifetime_name, …
- Strings: "", "Leicester", r##"venezuelan beaver"##, …
- Symbols: [, :, ::, ->, @, <-, …

这些会出现在代码中的 Tokens 经过编译器初步处理，就会转换成 AST - Abstract Syntax Tree，
Token trees 则是介于 Tokens 与 AST 之间的东西。以树状数据结构方式存放，所以叫做语法树。

将源代码的字符流转换成 Token 是编译原理最开始的部分，做这一步工作的程序叫做 Lexical Analyzer
词法分析器，然后将源代码中字符串中的 Tokens 转换为 AST，这一步对应的程序叫做 Syntax Analyzer，
即词法解析器 Parser。

编写过程宏，通常需要借助三个 crate 来解析语法树中的节点数据:

001. syn 模块用来解析语法树(AST)的各种语法构成，即是 Syntax Analyzer。
002. quote 解析语法树，生成 Rust 代码，从而实现想要的功能。
003. proc_macro(std) 和 proc_macro2(3rd-party)

例如，以下是使用 `println!("{input:#?}");` 打印 `2, 2` 这个表达式对应的 TokenStream 对象：

    TokenStream [
        Literal {
            kind: Integer,
            symbol: "2",
            suffix: None,
            span: #0 bytes(615..616),
        },
        Punct {
            ch: ',',
            spacing: Alone,
            span: #0 bytes(616..617),
        },
        Literal {
            kind: Integer,
            symbol: "2",
            suffix: None,
            span: #0 bytes(618..619),
        },
    ]

以下这个简单表达式为例：

    a + b + (c + d[0]) + e

表达式经过编译器 Parser 过程后，转化为以下这样的 AST，当然它在内存中的数据并不是长这样，这里只是图形将数据关系表达出来而已：

                  ┌─────────┐
                  │ BinOp   │
                  │ op: Add │
                ┌╴│ lhs: ◌  │
    ┌─────────┐ │ │ rhs: ◌  │╶┐ ┌─────────┐
    │ Var     │╶┘ └─────────┘ └╴│ BinOp   │
    │ name: a │                 │ op: Add │
    └─────────┘               ┌╴│ lhs: ◌  │
                  ┌─────────┐ │ │ rhs: ◌  │╶┐ ┌─────────┐
                  │ Var     │╶┘ └─────────┘ └╴│ BinOp   │
                  │ name: b │                 │ op: Add │
                  └─────────┘               ┌╴│ lhs: ◌  │
                                ┌─────────┐ │ │ rhs: ◌  │╶┐ ┌─────────┐
                                │ BinOp   │╶┘ └─────────┘ └╴│ Var     │
                                │ op: Add │                 │ name: e │
                              ┌╴│ lhs: ◌  │                 └─────────┘
                  ┌─────────┐ │ │ rhs: ◌  │╶┐ ┌─────────┐
                  │ Var     │╶┘ └─────────┘ └╴│ Index   │
                  │ name: c │               ┌╴│ arr: ◌  │
                  └─────────┘   ┌─────────┐ │ │ ind: ◌  │╶┐ ┌─────────┐
                                │ Var     │╶┘ └─────────┘ └╴│ LitInt  │
                                │ name: d │                 │ val: 0  │
                                └─────────┘                 └─────────┘

每个方块都表示 AST 的一个节点，对应的是一种操作，它含有两个输入，这样的结构非常有利于二叉树这种数据结构的实现。

反过来，根据 AST 可以构造出任意语法的结构的源代码：

    ┌─────────────┐
    │ Let         │
    │ name: eight │   ┌─────────┐
    │ init: ◌     │╶─╴│ BinOp   │
    └─────────────┘   │ op: Mul │
                    ┌╴│ lhs: ◌  │                    -----------> let eight = 2 * four!();
         ┌────────┐ │ │ rhs: ◌  │╶┐ ┌────────────┐
         │ LitInt │╶┘ └─────────┘ └╴│ Macro      │
         │ val: 2 │                 │ name: four │
         └────────┘                 │ body: ()   │
                                    └────────────┘

Rust 编译器在展开宏时，会有不同的使用形式：

- `# [ $arg ];` attributes style, e.g. `#[derive(Clone)]`, `#[no_mangle]`, …
- `#![ $arg ];` e.g. `#![allow(dead_code)]`, `#![crate_name="blang"]`, …
- `$name! $arg;` e.g. `println!("Hi!")`, `concat!("a", "b")`, …
- `$name! $arg0 $arg1;` e.g. `macro_rules! dummy { () => {}; }`.

对于第三种形式 `$name! $arg`，问题是 Rust 解析器如何知道每个 $arg 可能的语法扩展的是什么样子的？
答案是不必。相反，语法扩展调用的参数是单个令牌树。更具体地说，它是一个单一的，无子叶 Token Tree；

✅ Crate Syn

Syn is a parsing library for parsing a stream of Rust tokens into a syntax tree of Rust source code.

Currently this library is geared toward use in Rust procedural macros, but contains 
some APIs that may be useful more generally.

- **Data structures** — Syn provides a complete syntax tree that can represent 
    any valid Rust source code. The syntax tree is rooted at **syn::File** which 
    represents a full source file, but there are other entry points that may be 
    useful to procedural macros including **syn::Item**, **syn::Expr** and **syn::Type**.

- **Derives** — Of particular interest to derive macros is **syn::DeriveInput** which
    is any of the three legal input items to a derive macro. An example below shows 
    using this type in a library that can derive implementations of a user-defined trait.

- **Parsing** — Parsing in Syn is built around parser functions with the signature 
    `fn(ParseStream) -> Result<T>`. Every syntax tree node defined by Syn is individually 
    parsable and may be used as a building block for custom syntaxes, or you may 
    dream up your own brand new syntax without involving any of our syntax tree types.

- **Location information** — Every token parsed by Syn is associated with a Span 
    that tracks line and column information back to the source of that token. 
    These spans allow a procedural macro to display detailed error messages 
    pointing to all the right places in the user's code. There is an example of this below.

- **Feature flags** — Functionality is aggressively feature gated so your procedural 
    macros enable only what they need, and do not pay in compile time for all the rest.


Example of a derive macro

The canonical derive macro using Syn looks like this. We write an ordinary Rust 
function tagged with a **proc_macro_derive** attribute and the name of the trait 
we are deriving. Any time that derive appears in the user's code, the Rust compiler 
passes their data structure as tokens into our macro. We get to execute arbitrary 
Rust code to figure out what to do with those tokens, then hand some tokens back 
to the compiler to compile into the user's crate.


```rust,ignore
extern crate proc_macro;

use proc_macro::TokenStream;
use quote::quote;
use syn::{parse_macro_input, DeriveInput};

#[proc_macro_derive(MyMacro)]
pub fn my_macro(input: TokenStream) -> TokenStream {
    // Parse the input tokens into a syntax tree
    let input = parse_macro_input!(input as DeriveInput);

    // Build the output, possibly using quasi-quotation
    let expanded = quote! {
        // ...
    };

    // Hand the output tokens back to the compiler
    TokenStream::from(expanded)
}
```

✅ Crate quote

The following quasi-quoted block of code is something you might find in a procedural 
macro having to do with data structure serialization. The #var syntax performs 
interpolation of runtime variables into the quoted tokens. 

Check out the documentation of the **quote!** macro for more detail about the syntax.

See also the **quote_spanned!** macro which is important for implementing hygienic procedural macros.


```rust,ignore
let tokens = quote! {
    struct SerializeWith #generics #where_clause {
        value: &'a #field_ty,
        phantom: core::marker::PhantomData<#item_ty>,
    }

    impl #generics serde::Serialize for SerializeWith #generics #where_clause {
        fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
        where
            S: serde::Serializer,
        {
            #path(self.value, serializer)
        }
    }

    SerializeWith {
        value: #value,
        phantom: core::marker::PhantomData::<#item_ty>,
    }
};
```


✅ Crate proc_macro2

A wrapper around the procedural macro API of the compiler's proc_macro crate. 
This library serves two purposes:

- Bring proc-macro-like functionality to other contexts like build.rs and main.rs. 

Types from proc_macro are entirely specific to procedural macros and cannot ever 
exist in code outside of a procedural macro. Meanwhile proc_macro2 types may exist 
anywhere including non-macro code. By developing foundational libraries like syn 
and quote against proc_macro2 rather than proc_macro, the procedural macro ecosystem 
becomes easily applicable to many other use cases and we avoid reimplementing 
non-macro equivalents of those libraries.

- Make procedural macros unit testable. 

As a consequence of being specific to procedural macros, nothing that uses proc_macro 
can be executed from a unit test. In order for helper libraries or components of 
a macro to be testable in isolation, they must be implemented using proc_macro2.


Usage
The skeleton of a typical procedural macro typically looks like this:

```rust,ignore
extern crate proc_macro;

#[proc_macro_derive(MyDerive)]
pub fn my_derive(input: proc_macro::TokenStream) -> proc_macro::TokenStream {
    let input = proc_macro2::TokenStream::from(input);

    let output: proc_macro2::TokenStream = {
        /* transform input */
    };

    proc_macro::TokenStream::from(output)
}
```

If parsing with Syn, you'll use parse_macro_input! instead to propagate parse errors correctly back to the compiler when parsing fails.




# 🟡🟠 Reflection
- https://doc.rust-lang.org/stable/std/any
- https://doc.rust-lang.org/stable/std/any/struct.TypeId.html
- https://doc.rust-lang.org/stable/std/intrinsics/fn.type_id.html

Rust 是静态类型语言，不像 Java 这类使用虚拟机的语言，没有强大的反射机制。Rust 提供的反射一种编译时反射，只能对 `'static` 生命周期的变量（常量）进行反射！

Ruat 提供 trait Any 来模拟一个动态类型，它本身就是 `'static`，结合 TypeId 提供了简单的运行时反射的能力。使用它们，就可以用来实现依赖反转模式，实现任意类型容器。

```rust,ignore
#![feature(type_name_of_val)]
use std::any::{Any, TypeId, type_name_of_val};

let boxed: Box<dyn Any> = Box::new(3_i32);

// You're more likely to want this:
let actual_id = (&*boxed).type_id();
// ... than this:
let boxed_id = boxed.type_id();

assert_eq!(actual_id, TypeId::of::<i32>());
assert_eq!(boxed_id, TypeId::of::<Box<dyn Any>>());
assert_eq!("core::any::TypeId", type_name_of_val(&actual_id));
```

除了 trait Any 定义的 type_id 方法，在 std::any 模块还为以下三种 `dyn Any` 类型实现了另外三个方法：

```rust,ignore
pub trait Any: 'static {
    pub fn type_id(&self) -> TypeId;
}

impl dyn Any + 'static
impl dyn Any + 'static + Send
impl dyn Any + 'static + Send + Sync

pub fn is<T: Any>(&self) -> bool
pub fn downcast_ref<T: Any>(&self) -> Option<&T>
pub fn downcast_mut<T: Any>(&mut self) -> Option<&mut T>
```

TypeId 包含类型标识，同一种类型当然具有相同的类型标识。

```rust,ignore
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Debug, Hash)]
#[stable(feature = "rust1", since = "1.0.0")]
pub struct TypeId {
    t: u64,
}

impl TypeId {
    #[stable(feature = "rust1", since = "1.0.0")]
    #[rustc_const_unstable(feature = "const_type_id", issue = "77125")]
    pub const fn of<T: ?Sized + 'static>() -> TypeId {
        TypeId { t: intrinsics::type_id::<T>() }
    }
}
```



# 🟡🟠 Test 自动测试
- https://doc.rust-lang.org/book/ch11-00-testing.html
- https://doc.rust-lang.org/book/ch14-02-publishing-to-crates-io.html#documentation-comments-as-tests
- https://doc.rust-lang.org/book/ch12-04-testing-the-librarys-functionality.html

自动化测试是现代化编程必不可少的工具，它能极有效地提高程序开发效率，同时更有效地提高软件的可用性。从这点出发，有一种开发模式就叫做测试驱动开发 TDD - Test-Driven Development。

- 编写期望得到 fails 的测试。
- 编写或修改代码以使新的测试通过。
- 重构刚刚添加或更改的代码，保持测试通过。
- 重复 step 1!

Edsger W. Dijkstra 在他 1972 年的论文《谦卑的程序员》中说：“测试以一种非常有效的方法来显示 bug 的存在，但是它对于显示 bug 的不存在是无法实现的。”

Rust 提供了一些宏帮助编写测试脚本，如将 `#[test]` 写在函数前表示一个执行测试时 cargo test 运行的函数：

```rust,ignore
#[test]
fn it_works() {
    assert_eq!(2 + 2, 4);
}
```

使用`#[test]`这个宏标记的函数，在使用 cargo build 编译时，就会被忽略，而使用 cargo test 可以运行这些函数。

还可以指定多线程进行测试，或者使用`show-output`显示 `println!()` 打印的信息：

    cargo test -- --test-threads=2
    cargo test -- --show-output

又或者指定执行某个测试函数，也可以只指定前缀，这样可以运行某些测试函数：

    cargo test it_works


利用以下宏可以进行断言，对需要进行测试的代码返回值进行比较：

- `assert!(boolean)` 保证条件成立。
- `assert_eq!(a, b)` 保证两个值等价。
- `assert_ne!(a, b)` 保证两个值不等价。

```rust,ignore
let a = 3; let b = 27;
assert!(a + b == 30, "a = {}, b = {}", a, b);
assert_eq!(a, b, "we are testing addition with {} and {}", a, b);
```

如果被测试的代码在指定条件执行时会 panic，那么就可以在测试方法中使用 `#[should_panic]` 提示 Rust。

```rust,ignore
#[test]
#[should_panic(expected = "Guess value must be less than or equal to 100")]
fn greater_than_100() {
    Guess::new(200);
}
```

对于复杂的条件，可以在测试函数中使用`Result<T, E>`，返回 Ok 值表示通过测试：

```rust,ignore
#[test]
fn it_works_2() -> Result<(), String> {
    if 2 + 2 == 4 {
        Ok(())
    } else {
        Err(String::from("two plus two does not equal four"))
    }
}
```

如果某个测试函数非常耗时，或暂时没更新，可以使用`#[ignore]`宏标记它，不让它参与测试：

```rust,ignore
#[test]
#[ignore]
fn expensive_test() {
    // code that takes an hour to run
}
```

Rust 的测试特性按精细度划分，分为函数级、模块级、工程级 3 个层次，执行测试也对应有 3 个测试输出。最后，还有 Doc-tests 输出的是注解文档部分的测试。

工程级的测试脚本在根据访谈录下的 tests 文件夹定义，代码文件名任意。

对于需要在多个测试函数使用的配置，可以在 tests/common.rs 定义，如下：

```rust,ignore
pub fn setup() {
    // setup code specific to your library's tests would go here
}
```

在其它测试函数需要使用时，引用以上定义的函数：

```rust,ignore
use adder;

mod common;

#[test]
fn it_adds_two() {
    common::setup();
    assert_eq!(4, adder::add_two(2));
}
```


使用 `#[cfg(test)]` 配置一个作为测试专用模块是很好的习惯，这样组织的代码更有条理：

```rust,ignore
pub fn add_two(a: i32) -> i32 {
    internal_adder(a, 2)
}

fn internal_adder(a: i32, b: i32) -> i32 {
    a + b
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn internal() {
        assert_eq!(4, internal_adder(2, 2));
    }
}
```

Rust 注解文档是具有功能的，它可以通过注解生成文档，而不是单独编写文档。一是代码本身是文档，二是代码的注释就是文档。Rust 不但可以自动抽取代码中的文档，形成标准形式的文档集合，还可以对文档中的示例代码进行测试。

比如，我们给上面库加点文档：

```rust,ignore
//! The `adder` crate provides functions that add numbers to other numbers.
//!
//! # Examples
//!
//! ```
//! assert_eq!(4, adder::add_two(2));
//! ```

/// This function adds two to its argument.
///
/// # Examples
///
/// ```
/// use adder::add_two;
///
/// assert_eq!(4, add_two(2));
/// ```

pub fn add_two(a: i32) -> i32 {
   a + 2
}

#[cfg(test)]
mod tests {
   use super::*;

   #[test]
   fn it_works() {
      assert_eq!(4, add_two(2));
   }
}
```




# 🟡🟠 Asynchronous 异步编程
- Asynchronous Programming in Rust https://rust-lang.github.io/async-book/01_getting_started/01_chapter.html
- Rust 中的异步编程 https://huangjj27.github.io/async-book/01_getting_started/01_chapter.html
- Rust 异步编程 https://learnku.com/docs/async-book/2018/translation-notes/4798


# 🟡🟠 Fearless Concurrency
- https://doc.rust-lang.org/book/ch16-00-concurrency.html
- https://blog.rust-lang.org/2015/04/10/Fearless-Concurrency.html
- https://doc.rust-lang.org/stable/std/sync/index.html
- https://doc.rust-lang.org/stable/std/thread/index.html
- 【译】Rust，无畏并发 https://www.cnblogs.com/praying/p/13912955.html
- C++ Concurrency in Action by Anthony Williams https://2lib.org/book/3688262/d57395?id=3688262
- Rust 编程之道 张汉东 https://2lib.org/book/5539891/6f3df0
- 深入浅出 Rust 范长春 https://2lib.org/book/5063683/cb5839
- Programming Rust: Fast, Safe Systems Development https://2lib.org/book/3400043/791885

此小节主要内容：

- Using Threads to Run Code Simultaneously
- Using Message Passing to Transfer Data Between Threads
- Shared-State Concurrency
- Extensible Concurrency with the Sync and Send Traits

Rust 号称无所畏惧的并发 Fearless Concurrency，究竟有利害呢？

Rust 项目旨在解决这两个棘手的问题：

- 如何进行安全的系统编程？
- 如何使得并发更容易？

意外的是它们解决方案是一致的：内存安全漏洞和并发漏洞通常都可以归结于访问了不应该访问的数据。Rust 的秘密武器是所有权机制，这是系统程序员试图遵循的一种访问控制原则，而 Rust 编译器将为你静态检查。

对于内存安全性，这意味着你可以在没有垃圾收集器的情况下编程，而且不需要害怕段错误，因为 Rust 将会捕捉你的错误。

对于并发，这意味着你可以选择各种各样的范式（消息传递，共享状态，无锁，纯函数式），而 Rust 将会帮助你避免常见的错误。

多线程间共享数据时可能会出很多问题，最常见的两种主要问题是：

- `Race Conditions` 竞态条件，常发生于多个线程以不一致的顺序访问/修改共享数据，这会破坏数据一致性。
- `Deadlocks` 死锁发生于多个线程互相等待对方释放资源导致无限挂起。活锁 livelock 类似，但有一定几率解开，而死锁无解。

死锁产生的必要条件：

- 互斥 mutual exclusion：系统存在着临界资源；
- 占有并等待 hold and wait：已经得到某些资源的进程还可以申请其他新资源；
- 不可剥夺 no preemption：已经分配的资源在其宿主没有释放之前不允许被剥夺；
- 循环等待 circular waiting：系统中存在多个进程形成的封闭的进程等待链，每个进程都在等待它的下一个进程所占有的资源；


并发、并行，与异步是容易混淆的概念。

异步 Asynchronous 与同步 Synchronous 是对立概念，是描述代码执行的方式。异步可以让需要等待的代码进入暂停状态，等待中断信号来唤醒。同时继续执行后续的代码，而同步则不会这样，同步会一起等待时间消耗大的任务完成返回后才继续执行。

异步，在单线程上就可以实现，而并行 Parallel 则需要多线程，即在多核芯 CPU 上才有效力。进程是操作系统进行内存或硬件资源分配的基本单位，线程则是操作系统的调度程序执行的基本单位。

并行是同时运行代码 Run Code Simultaneously，并发类似并行，关键是你有处理多个任务的能力，不一定要同时。并行的关键是你有同时处理多个任务的能力。所以我认为它们最关键的点就是：是否是『同时』。

线程同步 Thread Synchronization 这一概念将同步扩展到多线程程序中来，实现线程同步的代码就具有对同一数据访问的同步访问，具有多线程安全性。

一个抽象的比喻：

- 你吃饭吃到一半，电话来了，你一直到吃完了以后才去接，这就说明你不支持并发也不支持并行。
- 你吃饭吃到一半，电话来了，你停了下来接了电话，接完后继续吃饭，这说明你支持并发。
- 你吃饭吃到一半，电话来了，你一边打电话一边吃饭，这说明你支持并行。

Erlang 之父 Joe Armstrong 用一张 5 岁小孩都能看懂的咖啡机工作图解释了并发与并行的区别：

![Erlang](https://pic4.zhimg.com/80/v2-674f0d37fca4fac1bd2df28a2b78e633_1440w.jpg)

- 并发：两个队列交替使用一台咖啡机，即一个线程处理多个任务，当然实现方式不仅限于多线程、多进程方式；
- 并行：两个队列同时使用两台咖啡机，即多个线程处理多个任务；
- 串行：一个任务队列使用一台咖啡机，多个任务队列就需要排除，即一个线程处理一个任务；

在并发模型上面，Rust 是典型的 Actor Model，而 Go 则是 CSP - Communicating Sequential Processes Model。在语法上面 Rust 和 Go 非常类似，都是通过 Channel 来实现自己的模型，但是具体的行为却有些细微的差别。

在 AM 并发模型，每个进程都是一个独立的角色，每个角色拥有一个独属的命名邮箱。Actors 之间通过异步的往对方邮箱投递信息来进行通信。

在 CSP 并发模型，进程与进程之间通过一个管道来进行通信。消息可以顺序的填入这个管道，也可以被逐次的从管道取出。注意到这个管道并不归属于某个进程。传统上，CSP 管道没有缓存，填入与取出是同步的，由此也就保证了消息不会在通信的过程中丢失。Go 额外的支持了带 buffer 的管道，用于提供与 AM 模型类似的异步通信。

Rust 多线程编程需要学习两个标准库，thread 和 sync 同步标准库，提供了大量在线程同步中需要使用的对象，并且包含以下两个子模块：

- atomic 原子类模块。
- mpsc  即 Multi-producer, single-consumer FIFO 队列通信模块。


## ⚡ 基本多线程程序
- https://doc.rust-lang.org/book/ch16-01-threads.html
- https://doc.rust-lang.org/book/ch20-00-final-project-a-web-server.html
- https://doc.rust-lang.org/stable/std/thread/fn.park.html
- https://doc.rust-lang.org/stable/std/thread/struct.Builder.html

受制于硬件技术，芯片电路尺寸在 10nm 水平接近原子尺寸，单核性能越来越接近瓶颈，现代 CPU 普遍是多核心，在硬件上基本全是多线程运行环境。

线程 `Thread` 是操作系统能够进行调度的最小单位，它是进程 `Process` 中的实际运作单位，每个进程至少包含一个线程。通俗地理解，进程就是操作系统运行的程序，具体代码的运行则是线程执行的。

不同语言实现的多线程方式不同，大多数操作系统提供 API 来创建线程，通过 API 方式创建的称为 1:1 线程模型，可以称为 native-threading。

而 Rust 和许多语言一样，也实现了自己的线程模型，语言层面上的实现称为 green-threading 模型，即 M:N 线程模型，M 和 N 不一定相等，即在 N 个操作系统线程上运行 M 个绿色线程。

为了避免引入第三方的线程库，有些编程语言引入了协程 Coroutine 的概念，在语法层面实现了纤程 Fiber 的功能。纤程和协程描述了相同的概念，他们都不是真正意义上的并行。但是，它们能让你更容易地处理异步I/O的问题。

Erlang 采用 M:N 模型很好的解决了 Green Thread 存在的问题，每个 native thread 都有一个自己的调度器。而且，Erlang 采用 shared nothing concurrency，可以把 Native Thread 存在的问题都抛之脑后。

具体使用什么模型是个平衡取舍问题。

一个笑话：

    面试官：你知道协程吗？
    你：订机票的那个吗，我常用。
    面试官：行，你先回去吧，等电话通知。


以下结合闭包演示多线程：

```rust,ignore
#![allow(unused)]

use std::thread;
use std::time::Duration;

fn main() {
    let handle = thread::spawn(|| {
        for i in 1..10 {
            println!("spawned thread: number {}!", i);
            thread::sleep(Duration::from_millis(100));
        }
    });

    for i in 1..5 {
        println!("main thread: number {}!", i);
        thread::sleep(Duration::from_millis(10));
    }
    
    // handle.join().unwrap();
}
```

程序输出可以看到，spawn 产生的线程并没有完全运行，因为子线程的 sleep 时间更长，主线程 sleep 时间更短而提前完成结束运行：

    main thread: number 1!
    spawned thread: number 1!
    main thread: number 2!
    main thread: number 3!
    main thread: number 4!

创建线程时，thread::spawn 会返回一个 `JoinHandle<()>` 对象，圆括号表示一个无参数的函数类型。只需要执行这个句柄对象的 `join()` 方法阻塞主线程就可以等待子线程完成才结束程序。 

如果闭包内需要借用外部作用作用域的变量，可以直接使用 move Closures 移动所有权：

```rust,ignore
use std::thread;

fn main() {
    let v = vec![1, 2, 3];

    let handle = thread::spawn(move || {
        println!("Here's a vector: {:?}", v);
    });

    handle.join().unwrap();
    // drop(v); // oh no!
}
```

上面的代码中，向量 v 会被闭包借用，但是程序中子线程中对 v 的借用可能会有更长的生命周期。而主线程中，它会在主函数结束时被回收，这就产生冲突了，所以需要使用 move 关键字来强制捕捉所有权。

也可以使用 `Builder` 线程工厂对象创建线程，这样可以为子线程指定进程名称、调用栈大小：

```rust,ignore
use std::thread;

let builder = thread::Builder::new()
                              .name("foo".into())
                              .stack_size(32 * 1024);
let mut x = 1;
let handler = builder.spawn( move || {
    x += 1;
}).unwrap();

handler.join().unwrap();
assert_eq!(1, x);
```

另外，使用 Builder 创建线程可以从启动线程的失败中恢复，实际上`thread::spawn`函数在 Builder 方法返回 io::Result 的地方死机，因为它直接使用 unwrap 而没有处理错误。


线程标准库中定义的函数：

- `available_concurrency` 
- `current` 
- `panicking` 
- `park` 阻塞线程，除非或直到当前线程的令牌可用，注意，调用 `park()` 方法不能保证线程将永远处于驻车状态。
- `park_timeout` 
- `park_timeout_ms` 
- `sleep` 线程等待一段时间后，再接着继续执行。
- `sleep_ms` 
- `spawn` 孵化一个进程并返回一个 JoinHandle 对象。
- `yield_now` 放弃当前线程的时间片，让给系统调度器选择其它线程执行。

线程暂停执行的方法有多种方式，yield_now 和 sleep 会自动恢复执行，而 park 方式需要执行 unpark 把等待的线程叫醒。

类似的还可以使用同步对象 `Condvar` 条件变量或 `Barrier` 等。


## ⚡ Synchronization 同步对象
- https://doc.rust-lang.org/stable/std/sync/index.html
- https://doc.rust-lang.org/stable/std/sync/atomic/index.html
- https://doc.rust-lang.org/stable/std/sync/mpsc/index.html

原子类型是最简单的控制共享资源访问的一种机制，相比较于后面将介绍的互斥锁而言，原子类型不需要开发者处理加锁和释放锁的问题，同时支持修改，读取等操作，还具备较高的并发性能，从硬件到操作系统，到各个语言，基本都支持。

在标准库 std::sync::atomic 中，包含 Rust 现有的原子类型，这些原子类型基本能满足所有共享资源线程安全访问的需要。

- AtomicBool
- AtomicI16 AtomicU16
- AtomicI32 AtomicU32
- AtomicI64 AtomicU64
- AtomicI8 AtomicU8
- AtomicIsize
- AtomicPtr
- AtomicUsize

这些原子类型会提供以下操作：

- CAS - Compare-And-Swap 比较并交换操作
- Fetch add/sub/and/or 原子类型的各种运算
- Load 从原子类型读取值
- Store 写入一个值到原子类型
- Swap 交换

原子类型模块中有一个 Ordering 排序约束枚举类型，它的作用是将内存顺序的控制权交给开发者，含义如下：

Relaxed：表示「没有顺序」，也就是开发者不会干预线程顺序，线程只进行原子操作

Release：对于使用Release的store操作，在它之前所有使用Acquire的load操作都是可见的

Acquire：对于使用Acquire的load操作，在它之前的所有使用Release的store操作也都是可见的

AcqRel：它代表读时使用Acquire顺序的load操作，写时使用Release顺序的store操作

SeqCst：使用了SeqCst的原子操作都必须先存储，再加载。

    |  枚举值   |           含义           |      对应 C++20      |
    |-----------|--------------------------|----------------------|
    | `Relaxed` | 无排序约束，只是原子操作。 | memory_order_relaxed |
    | `Release` |                          | memory_order_release |
    | `Acquire` |                          | memory_order_acquire |
    | `AcqRel`  |                          | memory_order_acq_rel |
    | `SeqCst`  |                          | memory_order_seq_cst |

示范原子类型使用，：

```rust,ignore
use std::sync::atomic::{AtomicUsize, Ordering};

let mut some_var = AtomicUsize::new(10);
assert_eq!(*some_var.get_mut(), 10);
*some_var.get_mut() = 5;
assert_eq!(some_var.load(Ordering::SeqCst), 5);
```

基于原子类型实现一个自旋锁：

```rust,ignore
use std::sync::Arc;
use std::sync::atomic::{AtomicUsize, Ordering};
use std::thread;

fn main() {
    let spinlock = Arc::new(AtomicUsize::new(1));

    let spinlock_clone = Arc::clone(&spinlock);
    let thread = thread::spawn(move|| {
        spinlock_clone.store(0, Ordering::SeqCst);
    });

    // Wait for the other thread to release the lock
    while spinlock.load(Ordering::SeqCst) != 0 {}

    if let Err(panic) = thread.join() {
        println!("Thread had an error: {:?}", panic);
    }
}
```



大多数低级同步原语都非常容易出错，使用起来也不方便，所以标准库提供了一些高级同步对象。它们可以由较低级别的原语构建，为了提高效率，标准库中的同步对象通常是基于操作系统内核实现的，内核可以在线程在获取锁时被阻塞时重新调度线程。

以下这些都是同步对象：

- `Arc`: Atomically Reference-Counted pointer 原子计数指针，是 Rc 指针的多线程安全版本。它可以延长某些数据的生存期，直到所有线程都不再使用它。
- `Barrier`: 确保多线程在执行到一点时，会等待其它线程再到达这一点再一起继续执行。
- `Condvar`: 条件变量，提供阻塞线程并且等待事件通知恢复执行的能力。
- `mpsc`: MPSC 通信队列 Multi-producer, single-consumer queues 提供经量组进程间管道同步通信机制。
- `Mutex`: 互斥机制 Mutual Exclusion，确保某一时刻最多只有一个线程可以访问同一个数据。
- `Once`: 用于线程安全、一次性地执行全局变量初始化。
- `RwLock`: 基于互斥机制实现的读写锁，同时允许多个读，但只能有一个写，并且读和写不能同时存在。

演示使用 park 暂停与恢复线程执行：

```rust,ignore
use std::thread;
use std::time::Duration;

let parked_thread = thread::Builder::new()
    .spawn(|| {
        println!("Parking thread");
        thread::park();
        println!("Thread unparked");
    })
    .unwrap();

// Let some time pass for the thread to be spawned.
thread::sleep(Duration::from_millis(10));

println!("Unpark the thread");
parked_thread.thread().unpark();

parked_thread.join().unwrap();
```

示范 `Once` 使用：

```rust,ignore
use std::sync::Once;

static START: Once = Once::new();

START.call_once(|| {
    // run initialization here
});
```

在操作系统和编程语言中，引入了一种叫着条件变量的东西。可以模拟现实生活中的闹钟的行为，条件达成就通知等待条件的线程以恢复执行。

Rust 的条件变量是 Condvar，使用通知机制是因为有等待，所以通知和等待几乎都是成对出现的。等待所使用的对象，与通知所使用的对象，是同一个对象，而该对象需要在多个线程之间共享。

除了 Condvar 之外，其实锁也是具有自动通知功能的，当持有锁的线程释放锁的时候，等待锁的线程就会自动被唤醒，以抢占锁。通过条件变量和锁，还可以构建更加复杂的自动通知方式，比如 Barrier。

通知可以是 1:1 或 1:N 的，即 Condvar 可以控制通知 1 个或 N 个线程的唤醒。而锁则不能控制，只要释放锁，所有等待锁的其他线程都会同时醒来，而不是只有最先等待的线程。

示范使用 `Condvar`，在主线程中等待子线程的通知：

```rust,ignore
use std::sync::{Arc, Mutex, Condvar};
use std::thread;

let pair = Arc::new((Mutex::new(false), Condvar::new()));
let pair2 = Arc::clone(&pair);

// Inside of our lock, spawn a new thread, and then wait for it to start.
thread::spawn(move|| {
    let (lock, cvar) = &*pair2;
    let mut started = lock.lock().unwrap();
    *started = true;
    // We notify the condvar that the value has changed.
    cvar.notify_one();
});

// Wait for the thread to start up.
let (lock, cvar) = &*pair;
let mut started = lock.lock().unwrap();
while !*started {
    started = cvar.wait(started).unwrap();
}
```



## ⚡ Message Passing 消息传递
- https://doc.rust-lang.org/book/ch16-02-message-passing.html
- https://learnku.com/docs/effective-go/2020/concurrent/6249
- https://doc.rust-lang.org/stable/std/sync/mpsc/index.html

在 Go 语言的文档中有一句口号：“Do not communicate by sharing memory; instead, share memory by communicating.”

不要通过共享内存来通信，而应通过通信来共享内存。

Rust 也和 Go 一样，主要使用 channel 来传递消息，可以将它想象成水管，消息就像水流一样从一端流向另一端。

Rust 标准库提供异步通道和同步通道两种：

- 异步通道：不管接收者是否正在接收消息，消息发送者在发送消息时都不会阻塞。
- 同步通道：需要指定缓存消息数量，最小可以是 0 个，表示没有缓存。发送消息会被阻塞直到被接收端读取，发送端缓存队列填满消息并再次发送消息时，就会进入阻塞。

函数原型参考：

    pub fn channel<T>() -> (Sender<T>, Receiver<T>)
    pub fn sync_channel<T>(bound: usize) -> (SyncSender<T>, Receiver<T>)

演示如下：

```rust,ignore
use std::sync::mpsc;
use std::thread;
use std::time::Duration;

fn main() {
    let (tx, rx) = mpsc::channel();
    thread::spawn( move || {
        thread::sleep(Duration::from_millis(1000));
        let val = String::from("hi!");
        tx.send(val).unwrap();
        // println!("{}", val); <-- borrow of moved value: `val`
    });

    let received = rx.recv().unwrap();
    println!("Got message: {}", received);
}
```

数据变量在管道中传递时，所有权也是一起移动传递的，这就解决了数据竞争问题。

接收端是 rx，执行 `recv()` 方法会进入阻塞直到 tx 端有数据传输过来，而发送端可以连续输入数据而不会阻塞。

接收端是一个迭代器，可以直接使用 for in 进行枚举：

```rust,ignore
use std::sync::mpsc;
use std::thread;
use std::time::Duration;

fn main() {
    let (tx, rx) = mpsc::channel();

    thread::spawn(move || {
        let vals = vec![
            String::from("hi"),
            String::from("from"),
            String::from("the"),
            String::from("thread"),
        ];

        for val in vals {
            tx.send(val).unwrap();
            thread::sleep(Duration::from_secs(1));
        }
    });

    for received in rx {
        println!("Got: {}", received);
    }
}
```

管道是一个 Multi-producer, single-consumer FIFO 通讯队列，即可以对管道的发送端进行克隆，这样就可以在多个线程中使用同一个接收端获取消息： 

    let tx = tx.clone();
    let tx = mpsc::Sender::clone(&tx);

在多线程中，也可以将克隆接收端，这样就可以在各个线程中接收管道传递的消息。


## ⚡ Shared State 共享状态 
- https://doc.rust-lang.org/book/ch16-03-shared-state.html

Rust 的 static 静态变量，生命周期在整个应用程序有效，并且在内存中某个固定地址处只存在一份实例。所有线程都能够访问到它，通过它可以实现最简单的线程间内存共享。

```rust,ignore
use std::thread;
static C32: i32 = 5;
fn main() {
    let new_thread = thread::spawn(move|| {
        println!("static value in new thread: {:p}", &C32);
    });
    new_thread.join().unwrap();
    println!("static value in main thread: {:p}", &C32);
}
```

正如前面所说，不要通过共享内存来通信，而应通过通信来共享内存。

What would communicating by sharing memory look like? In addition, why would message-passing enthusiasts not use it and do the opposite instead?

那么，共享内存方式的通讯会有什么问题呢？其实共享内存方式就如同多个所有权，不同线程可在同一时刻访问同一数据，这就会产生数据竞争问题。

在前面部分内容可以看到，通过 Box Rc RefCell 等智能指针可以实现多个所有权。

使用互斥量 Mutexes 即 Mutual Exclusion 可以确保同一时该只有一个线程可以访问同一个内存数据，这就是锁封机制的实现。

互斥锁以难以使用而闻名，必须记住两条规则：

- 必需在使用数据之前尝试获取锁。
- 完成操作互斥锁保护的数据后，必须解锁数据，以便其他线程可以获取锁。

互斥量的管理非常棘手，这就是为什么那么多人热衷于使用通信管道。

以下演示互斥量 `Mutex<T>` 的使用：

```rust,ignore
use std::sync::Mutex;

fn main() {
    let m = Mutex::new(5);

    {
        let mut num = m.lock().unwrap();
        *num = 6;
    }

    println!("m = {:?}", m);
}
```

准确地说，`Mutex<T>` 的 `lock()` 方法返回的是一个 `MutexGuard` 智能函数，由 `LockResult` 包装，`unwrap()` 解包，锁定后就可以通过智能指针访问互斥量内部的数据。

智能指针 `MutexGuard` 实现了 `Deref` 来访问内部指向的数据，还实现了 `Drop`，这样在 MutexGuard 脱离作用域后就会自行解锁。

现在的问题是如何在多线程中使用互斥量，也就是使用智能指针处理 Multiple Ownership 问题。

但是不能直接使用 `Rc<Mutex<i32>>` 这样的智能指针，因为没有实现 trait `Send`，不能在多线程中安全共享。 

    let counter = Rc::new(Mutex::new(0));
    let counter = Rc::clone(&counter);

取而代之的是 Atomic Reference Counting，即 `Arc<T>`，它和 `Rc<T>` 智能指针很像，但是支持原子操作。

以下演示使用 `Arc<T>` 包装互斥量以实现多线程安全共享：

```rust,ignore
use std::thread;
use std::sync::{Arc, Mutex};

fn main() {
    let counter = Arc::new(Mutex::new(0));
    let mut handles = vec![];
    for _ in 1..10 { 
        let counter = Arc::clone(&counter);
        let handle = thread::spawn(move || {
            let mut num = counter.lock().unwrap();
            *num += 1;
        });
        handles.push(handle);
    }
    for handle in handles {
        handle.join().unwrap();
    }

    println!("Result: {}", *counter.lock().unwrap());
}
```

这里有必要比较一下 `RefCell<T>`/`Rc<T>` 与 `Mutex<T>`/`Arc<T>`。

示范代码中 `counter` 是不可变量，但是通过 `Mutex<T>` 提供的内部可变性实现了对 `Arc<T>` 内部数据的修改，和 `Cell` 族指针可以做的一样。在智能指针部分的内容中，使用 `RefCell<T>` 对于 `Rc<T>` 包装的不可变量做了一样的事。 

但是注意，使用 `Mutex<T>` 就意味 Rust 不能再提供完整的逻辑错误检查。智能指针部分，演示了两个 `Rc<T>` 循环引用导致内存泄漏，而 `Mutex<T>` 则可能带来死锁问题，当两个资源遇上两个持有其一的线程，并且两线程都在等待另一个资源，这就是死锁。

Arc 指针对此也不能幸免，它们都可能引入死锁问题，但是类似的，它可以通过 Atomic Weak 指针减少这种情况。

在使用管道传递消息时也会发生死锁，如下面代码所示：

```rust,ignore
use std::sync::mpsc;
use std::thread;

fn main() {
    let (tx1, rx1) = mpsc::channel();
    let (tx2, rx2) = mpsc::channel();

    thread::spawn(move || {
        rx1.recv().unwrap();
        tx2.send(()).unwrap();
    });

    rx2.recv().unwrap();
    tx1.send(()).unwrap();
    println!("Never Done!");
}
```

每个线程需要先从 channel 接收一个消息再向另一端发送消息，所以两个线程都会一直等待下去。



## ⚡ Send & Sync traits
- https://doc.rust-lang.org/book/ch16-04-extensible-concurrency-sync-and-send.html

Rust 语言提供的并发概念很少，主要是标准库关于并发的部分内容。

但是有两个内嵌于 Rust 语言中的并发概念，就是 Sync 和 Send 这两个定义在 std::marker 模块中的 trait。

Marker trait 实际就是一种约定，没有方法的定义，也没有关联元素，实现它就必须满足这种约定。一种类型是否加上这种约定，要么是编译器的行为，要么是人工手动的行为。

- Allowing Transference of Ownership Between Threads with `Send`
- Allowing Access from Multiple Threads with `Sync`

Send 和 Sync 在大部分情况下会由编译器自动推导出来，针对 Rust 的基础类型和 std 中的大部分类型。对于不能由编译器自动推导出来的类型，要使它们具有 Send 或 Sync 的约定，可以由人手动实现。实现的时候，必须使用 `unsafe` 方式，因为 Rust 中由程序员自己控制的东西，统统标记为 unsafe，出了问题由程序员自行负责。比如，给不是线程安全的对象加上 Sync 约定。

这两个约定的含义如下：

- 对于 T: Send，将 T 传到另一个线程，所有权也一并传递，不会导致数据竞争或其它不安全情况，如按值传送，多所有权的 `Rc<T>` 则不可。
    - Send 是对象可以安全发送到另一个执行体中；
    - Send 使被发送对象可以和产生它的线程解耦，防止原线程将此资源释放后，在目标线程中使用出错（use after free）。
- 对于 T: Sync，将 &T 传到另一个线程中时，不会导致数据竞争或其它不安全情况，`Rc<T>` 也不可以。
    - Sync 是可以被同时多个执行体访问而不出错；
    - Sync 防止的是竞争；

推论：

- T: Sync 意味着 &T: Send；
- Sync + Copy = Send；
- 当 T: Send 时，可推导出 &mut T: Send；
- 当 T: Sync 时，可推导出 &mut T: Sync；
- 当 &mut T: Send 时，不能推导出 T: Send；

具体的类型：

- 原始类型（比如： u8, f64），都是 Sync，都是 Copy，因此都是 Send；
- 只包含原始类型的复合类型，都是 Sync，都是 Copy，因此都是 Send；
- 当 T: Sync，Box<T>, Vec<T> 等集合类型是 Sync；
- 具有内部可变性的的指针，不是 Sync 的，比如 Cell, RefCell, UnsafeCell；
- Rc 不是 Sync。因为只要一做 &Rc<T> 操作，就会克隆一个新引用，它会以非原子性的方式修改引用计数，所以是不安全的；
- 被 Mutex 和 RWLock 锁住的类型 T: Send，是 Sync 的；
- 原始指针（`*mut`, `*const`）既不是 Send 也不是 Sync；

Rust 正是通过所有权和生命周期 + Send 和 Sync（本质上为类型系统）来为并发编程提供了安全可靠的基础设施，使得程序员可以放心在其上构建稳健的并发模型。这也正是 Rust 的核心设计观的体现：内核只提供最基础的原语，真正的实现能分离出去就分离出去。



# 🟡🟠 Multithreaded Web Server
- https://doc.rust-lang.org/book/ch20-00-final-project-a-web-server.html
- https://doc.rust-lang.org/stable/std/net/struct.TcpStream.html
- The I/O Prelude https://doc.rust-lang.org/stable/std/io/prelude/index.html
- Filesystem manipulation operations https://doc.rust-lang.org/stable/std/fs/index.html
- Hypertext Transfer Protocol -- HTTP/1.1 https://tools.ietf.org/html/rfc2616
- Tokio - Event-driven NBIO asynchronous I/O https://crates.io/crates/tokio
- hyper - A fast and correct HTTP library https://crates.io/crates/Hyper
- Actix Web framework https://crates.io/crates/actix-web
- Rocket Web framework https://crates.io/crates/rocket
- Rocket web framework Community contributed https://crates.io/crates/rocket_contrib
- Iron is a high level web framework https://docs.rs/iron/0.6.1/iron/
- A standard library for the client-side Web https://crates.io/crates/stdweb
- Gotham - A flexible web framework https://github.com/gotham-rs/gotham

这部分主要内容：

- Building a Single-Threaded Web Server
- Turning Our Single-Threaded Server into a Multithreaded Server
- Graceful Shutdown and Cleanup

前提基础，需要了解 TCP/IP 协议，主要是 HTTP 协议。

HTTP 请求数据包格式结构大概如下：

    Method Request-URI HTTP-Version CRLF
    header CRLF
    ...
    CRLF
    message-body

HTTP 响应数据包格式结构大概如下：

    HTTP-Version Status-Code Reason-Phrase CRLF
    header CRLF
    ...
    CRLF
    message-body

首先创建工程：

    cargo new webserver

实现一个单线程的服务器：

```rust,ignore
use std::net::TcpListener;
use std::net::TcpStream;
use std::io::prelude::*;
use std::fs;

fn main(){
    let listener = TcpListener::bind("127.0.0.1:80").unwrap();
    for stream in listener.incoming(){
        // let ts: TcpStream = stream.unwrap();
        // handle(ts);
        match stream {
            Ok(ts) => {
                println!("Connection established! {:?}", ts);
                handle(ts);
            }
            Err(e) => {
                println!("Error {:?}", e)
            }
        }
    }
}

fn handle(mut ts: TcpStream){
    let mut buf = [0; 1024];
    let size = ts.read(&mut buf).unwrap();
    println!("Request: {:?}", String::from_utf8_lossy(&buf[..=size]));
    
    let home = b"GET / HTTP/1.1\r\n";
    let fav = b"GET /favicon.ico HTTP/1.1\r\n";
    
    let (status_line, contents) = if buf.starts_with(home) {
        let contents = fs::read_to_string("Cargo.toml").expect("FileNotFound");
        ("HTTP/1.1 200 OK\r\n", contents)
    } else if buf.starts_with(fav) {
        ("HTTP/1.1 404 NOT FOUND\r\n", String::from(""))
    } else {
        let msg = "
        <h1>Message</h1>
        <p>Hello World!</p>
        ";
        ("HTTP/1.1 200 OK\r\n", String::from(msg))
    };
    let status = format!("{}Content-Type: html\r\nContent-Length: {}\r\n\r\n", status_line, contents.len());
    ts.write(status.as_bytes()).unwrap();
    ts.write(contents.as_bytes()).unwrap();
    ts.flush().unwrap();
}
```

要点：

- `bind(addr)` 方法返回 `Result<T, E>` 枚举类型，绑定成功就可以得到 TcpListener 实例；
- `incoming()` 方法返回一个永不返回 None 的迭代器，和客户端建立连接就返回一个流对象；
- std::fs 文件系统模块提供函数操作文件；
- std::io::prelude The I/O Prelude 提供文件操作方法的实现；
- `read(&mut buffer)` 读取请求流数据；
- `write(&mut buffer)` 写入响应流数据；

使用 String::from_utf8_lossy 方法可以宽松处理非 UTF8 编码内容，会使用 U+FFFD REPLACEMENT CHARACTER 即 � 符号去替换非法字符。

使用 autocannon 进行测试：

    $ autocannon -c 100 -d 5 -p 2 http://localhost/i
    Running 5s test @ http://localhost/i
    100 connections with 2 pipelining factor

    ┌─────────┬────────┬─────────┬─────────┬─────────┬────────────┬───────────┬─────────┐
    │ Stat    │ 2.5%   │ 50%     │ 97.5%   │ 99%     │ Avg        │ Stdev     │ Max     │
    ├─────────┼────────┼─────────┼─────────┼─────────┼────────────┼───────────┼─────────┤
    │ Latency │ 269 ms │ 1762 ms │ 3091 ms │ 3144 ms │ 1745.47 ms │ 829.25 ms │ 3220 ms │
    └─────────┴────────┴─────────┴─────────┴─────────┴────────────┴───────────┴─────────┘
    ┌───────────┬────────┬────────┬────────┬────────┬────────┬─────────┬────────┐
    │ Stat      │ 1%     │ 2.5%   │ 50%    │ 97.5%  │ Avg    │ Stdev   │ Min    │
    ├───────────┼────────┼────────┼────────┼────────┼────────┼─────────┼────────┤
    │ Req/Sec   │ 1631   │ 1631   │ 2585   │ 2813   │ 2413   │ 419.27  │ 1631   │
    ├───────────┼────────┼────────┼────────┼────────┼────────┼─────────┼────────┤
    │ Bytes/Sec │ 197 kB │ 197 kB │ 313 kB │ 340 kB │ 292 kB │ 50.7 kB │ 197 kB │
    └───────────┴────────┴────────┴────────┴────────┴────────┴─────────┴────────┘

    Req/Bytes counts sampled once per second.

    12k requests in 5.07s, 1.46 MB read
    13k errors (0 timeouts)

这个单线程实现的 Web 服务器的响应效率并不高，因为每个客户端连接都需要等待前一个连接处理完成后再跟进处理，需要使用多线程对其进行改造。

通常，使用线程池 thread pool 是一个不错的方案，设置一定数量的线程来处理客户端连接，每个线程在处理完一个连接后就进入空闲状态，等待新的连接进入。这种方案比单独一个线程对应一个连接的方案更节省资源，结合 single-threaded async I/O 可以实现性能非常高的服务器。并且，由于线程数量可控，这种方案更容易应付 DoS - Denial of Service 攻击，不会因为大量涌入的攻击请求而导致服务器宕机。

使用`unwrap`方法的原因是我们知道失败情形不会发生，但是编译器不知道这一点。

另外，服务器也没有对可以在处理过程中出现中断连接的情形进行处理，对任何已经中断连接的`TcpStream`对象进行操作都会导致处理线程 panic。

在处理函数中，读取数据时需要判断一下：

```rust,ignore
if let Ok(size) = ts.read(&mut buf) {
    println!("Read TcpStream bytes {}.", size);
}else{
    println!("Fail to read TcpStream.");
    return ;
}
```


## ⚡ Thread Pool 线程池实现
- https://crates.io/crates/scheduled-thread-pool

可以在 crates.io 上找到现有的线程池实现，学习他人的实现与这里的实现差异，比较一下哪种实现更强壮。

现在来设计线程池接口，只需要 ThreadPool 可以配置线程数量即可，提供一个 `execute()` 方法来处理客户端请求：

```rust,ignore
fn main() {
    let listener = TcpListener::bind("127.0.0.1:7878").unwrap();
    let pool = ThreadPool::new(4);

    for stream in listener.incoming() {
        let stream = stream.unwrap();

        pool.execute(|| {
            handle(stream);
        });
    }
}
```

尝试编译以上代码，编译器会给出错误提示，`ThreadPool` 没有实现，也没有 `execute()` 方法，需要去实现它们。Rust 将这种根据编译器提示来跟进代码实现的开发流程称为 Compiler Driven Development。

另外，还需要抽象一个工作线程 `Worker` 对象来管理线程的运行，并保存在线程池保内的队列中，每个工作线程在执行代码时就创建新的线程，完成后就进入空闲状态。

工作线程使用管道进行通信，只需接收从线程池传递过来的将客户连接任务，以及结束消息的处理即可。所以，需要在线程池对象中创建管道，并将接收端交给 Worker 以接收线程池中通过发送端传递来过的消息。

线程池在实例化时就创建工作线程，并由工作线程执行线程的孵化函数，借助管道的 `recv()` 方法的阻塞功能，可以结合 `loop` 循环结构来持续不断地执行：连接处理 -> 完成处理 -> 进入空闲 -> 处理新连接。

线程池需要在 `execute()` 方法将客户连接的处理函数通过管道消息转发给工作线程，由工作线程执行处理函数：

    pub fn spawn<F, T>(f: F) -> JoinHandle<T> 
    where
        // F: FnOnce() -> T + Send + 'static,
        F: FnOnce() -> T,
        F: Send + 'static,
        T: Send + 'static, 

根据 Traits 扩展的内部可知，闭包有 Fn, FnMut, FnOnce 等基本方式，而 `spawn` 方法要求了 FnOnce 即需要移动引用的外部数据所有权。因此实现线程池的 `execute()` 方法也需要接收一个 F 类型的参数，注意，传入的 Fn 还实现了 Send 表示在线程间移动所有权具有线程安全特性，还有 `'static` 生命周期，以。

为了更好地组织代码文件，将线程池部分代码写到 lib.rs 文件，作为库文件。

主程序 server.rs 和 client.rs 分别作用服务器，和客户端程序，可以放入 bin 目录中，结构如下：

    src
     +-- bin
     |    +-- main.rs
     |    +-- main.rs
     +-- lib.rs

注意，创建工程时使用的是 webserver 作为名称，引用库需要指定当前工程命名空间：

    use webserver::ThreadPool;

执行程序可以使用以下命令：

    cargo run --release --bin server
    cargo run --release --bin client

客户端程序只是简单的 Echo Client：

```rust,ignore
use std::io::{self, Read};
use std::net::TcpStream;
use std::io::prelude::*;
// use std::io::Write;
use std::env;

fn main() {
  let args:Vec<String> = env::args().collect();
  if args.len()==1 {
    println!("Usage: {} 127.0.0.1:80", args[0]);
    return ;
  }
  let mut stream = TcpStream::connect(&args[1])
      .expect("Couldn't connect to the server...");
  stream.set_nonblocking(true).expect("set_nonblocking call failed");

  stream.write("GET / HTTP/1.1\r\n".as_bytes());

  let mut buf = vec![];
  loop {
      match stream.read_to_end(&mut buf) {
          Ok(_) => break,
          Err(ref e) if e.kind() == io::ErrorKind::WouldBlock => {
            // wait until network socket is ready, typically implemented
            // via platform-specific APIs such as epoll or IOCP
            // wait_for_fd();
          }
          Err(e) => panic!("encountered IO error: {}", e),
      };
  };
  println!("{}", String::from_utf8_lossy(&buf[..]));
}
```

以下是需要的服务器端基本类型定义：

```rust,ignore
pub struct ThreadPool {
    workers: Vec<Worker>,
    sender: mpsc::Sender<Message>,
}

struct Worker {
    id: usize,
    thread: Option<thread::JoinHandle<()>>,
}

type Job = Box<dyn FnOnce() + Send + 'static>;

enum Message {
    NewJob(Job),
    Terminate,
}
```

除了基本的线程池、工作线程对象，还定义了：

- `Job` 类型，使用智能指针包装连接处理函数封装后的闭包，并通过消息在管道中传递，由线程池发送给工作线程。
- `Message` 消息枚举类型，主要有 `NewJob(Job)` 和 `Terminate` 两种取值。

接下来就需要实现线程池和工作线程：

```rust,ignore
impl ThreadPool {
    /// Create a new ThreadPool.
    ///
    /// The size is the number of threads in the pool.
    ///
    /// # Panics
    ///
    /// The `new` function will panic if the size is zero.
    pub fn new(size: usize) -> ThreadPool {
        assert!(size > 0);
        let (sender, receiver) = mpsc::channel();
        let receiver = Arc::new(Mutex::new(receiver));
        let mut workers = Vec::with_capacity(size);

        for id in 0..size {
            workers.push(Worker::new(id, Arc::clone(&receiver)));
        }

        ThreadPool { workers, sender }
    }

    pub fn execute<F>(&self, f: F)
    where
        F: FnOnce() + Send + 'static,
    {
        let job = Box::new(f);
        self.sender.send(Message::NewJob(job)).unwrap();
    }
}

impl Drop for ThreadPool {
    fn drop(&mut self) {

        for _ in &mut self.workers {
            if let Err(val) = self.sender.send(Message::Terminate){
                println!("Fail to send Terminate to worker: {}.", val);
            }
        }

        for worker in &mut self.workers {
            if let Some(thread) = worker.thread.take() {
                if let Err(inf) = thread.join(){
                    println!("Fail to join thread: {:?}", inf);
                }
            }
        }
    }
}

impl Worker {
    fn new(id: usize, receiver: Arc<Mutex<mpsc::Receiver<Message>>>) -> Worker {
        let name = "Worker-".to_string() + &id.to_string();
        let builder = thread::Builder::new().name(name.into());
        // let thread = thread::spawn(move || loop {
        let thread = builder.spawn(move || loop {
            let message = receiver.lock().unwrap().recv().unwrap();

            match message {
                Message::NewJob(job) => {
                    job();
                }
                Message::Terminate => {
                    break;
                }
            }
        });
        Worker { id, thread: Some(thread), }
    }
}
```

要点：

- 使用断言确保条件成立 `assert!(size > 0);`，再配合集体库提供的 `with_capacity` 创建指定容量的向量列表。
- 使用三斜杠注解以给用户提供帮助信息 `/// markdown`，用户在使用这个库时会得到提示信息。
- 使用闭包将客户连接的处理函数和上下文组织在一起，而前交给线程池的只是一个无参数的闭包函数。
- 在工作线程中，借助管道的 `recv()` 方法的阻塞功能和 `loop` 循环结构来持续不断地执行客户连接处理。
- 使用 `Vec<Worker>` 向量列表保存工作线程对象。
- 为线程池实现 `Drop` 以在结束程序时清理线程，这样就可以在线程池实例结束生命周期时清理掉工作线程。
- 为了在工作线程中实现线程安全共享管道对象，使用 `Mutex` 对管理对象进行包装。
- 并且使用 `Arc` 为包装了管道对象的互斥量创建多所有权，使得接收端可以被多个工作线程使用，以接收线程池中传递的消息。

注意，Worker 中的 thread 不是直接保存 `JoinHandle<()>` 而是将线程句柄封装在 Option 类型内。因为需要在多个线程种执行和线程的`join`，即需要多个可变引用。而它们没有实现 `Copy` trait，即没有多所有权的对象不能在多个线程中移动单一的所有权。

管道的 Receiver 对象不能直接在多个线程间转移，它没有实现 Copy Trait，无法在转移所有权过程中进行拷贝，就无法在将其所有权在多个线程间移动。最简单的方法就是使用 `Arc<Mutex<T>>` 进行封装，实现线程安全的多所有权。

Mutex 对象没有 `unlock` 方法，获取锁后返回一个 `MutexGuard<T>` 对象，封装在 `LockResult` 内，它在生命周期结束时，会自动对锁定对象进行解锁。 

如果，所有子线程全部结束后，再次通过管道发送消息，由于没有接收方，所以 `send` 方法会返回一个 `SendError`。

测试多线程版本的 WebServer：

    loadtest -n 1000 -c 100 --rps 100 http://localhost/i
    autocannon -c 100 -d 5 -p 2 http://localhost/i

在多线程运行条件下，autocannon 测试会出现大量中断连接的情况：

    $ autocannon -c 100 -d 5 -p 2 http://localhost/i
    Running 5s test @ http://localhost/i
    100 connections with 2 pipelining factor

    ┌─────────┬─────────┬─────────┬─────────┬─────────┬────────────┬────────────┬─────────┐
    │ Stat    │ 2.5%    │ 50%     │ 97.5%   │ 99%     │ Avg        │ Stdev      │ Max     │
    ├─────────┼─────────┼─────────┼─────────┼─────────┼────────────┼────────────┼─────────┤
    │ Latency │ 1766 ms │ 2620 ms │ 4923 ms │ 4985 ms │ 3229.41 ms │ 1002.56 ms │ 4985 ms │
    └─────────┴─────────┴─────────┴─────────┴─────────┴────────────┴────────────┴─────────┘
    ┌───────────┬─────┬──────┬─────────┬─────────┬────────┬─────────┬─────────┐
    │ Stat      │ 1%  │ 2.5% │ 50%     │ 97.5%   │ Avg    │ Stdev   │ Min     │
    ├───────────┼─────┼──────┼─────────┼─────────┼────────┼─────────┼─────────┤
    │ Req/Sec   │ 0   │ 0    │ 13      │ 42      │ 18.2   │ 14.75   │ 9       │
    ├───────────┼─────┼──────┼─────────┼─────────┼────────┼─────────┼─────────┤
    │ Bytes/Sec │ 0 B │ 0 B  │ 1.57 kB │ 5.08 kB │ 2.2 kB │ 1.78 kB │ 1.09 kB │
    └───────────┴─────┴──────┴─────────┴─────────┴────────┴─────────┴─────────┘

    Req/Bytes counts sampled once per second.

    91 requests in 5.08s, 11 kB read
    16k errors (0 timeouts)


# 🟡🟠 Game
- Bevy data-driven game engine built in Rust https://bevyengine.org
- Bevy Getting Started https://bevyengine.org/learn/book/getting-started/
- Amethyst Game Engine https://github.com/amethyst/amethyst
- Amethyst Documentation https://book.amethyst.rs/book/stable/
- cargo-apk https://lib.rs/crates/cargo-apk
- Rust-SDL2 https://crates.io/crates/sdl2
- Safe Rust wrapper around the Vulkan API http://vulkano.rs
- Elegant and safe OpenGL wrapper https://crates.io/crates/glium
- glutin - OpenGL, UTilities and INput https://crates.io/crates/glutin
- Code generators for creating bindings to the Khronos OpenGL APIs https://crates.io/crates/gl_generator

SDL 开发需要到官方网站下载预编译的库文件，如 Windows 平台就下载 SDL2-devel-2.0.x-VC.zip，解压到 Cargo toolchain 缓存目录中，并且将 SDL2.dll 拷贝到程序运行目录，或可以通过环境变量搜索到的目录。

也可以使用 Vcpkg 工具安装：

    vcpkg install sdl2:x64-windows
    vcpkg install sdl2-gfx:x64-windows
    vcpkg install sdl2-mixer:x64-windows
    vcpkg install sdl2-mixer[mpg123]:x64-windows
    vcpkg install sdl2-mixer[libvorbis]:x64-windows
    vcpkg install sdl2-net:x64-windows
    vcpkg install sdl2-ttf:x64-windows


# 🟡🟠 WebAssembly
- [Rust Wasm](https://rustwasm.github.io/docs/wasm-pack/introduction.html)
- [Rust 🦀 and WebAssembly 🕸](https://rustwasm.github.io/docs/book/)
- [Developer's Guide](https://webassembly.org/getting-started/developers-guide/)
- [Rust and WebAssembly Working Group](https://github.com/rustwasm/team)
- [Using WebAssembly](https://deno.land/manual@v1.29.0/runtime/webassembly)
- [The `wasm-bindgen` Guide](https://rustwasm.github.io/wasm-bindgen/)
- [WebAssembly MDN](https://developer.mozilla.org/en-US/docs/WebAssembly)
- [JavaScript modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules)
- [Compiling from Rust to WebAssembly](https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_wasm)
- [The WebAssembly System Interface (WASI)](https://wasi.dev/)
- [The AssemblyScript Book](https://www.assemblyscript.org/introduction.html)

WebAssembly 和汇编语言是有一些不同的，它是一个概念机上的机器语言，使用的字节码为虚拟指令。它比直接
运行 JavaScript 代码更快更直接的转换成机器代码，但它们不直接和特定硬件的特定机器代码对应。Web 应用
大多数性能问题都在强制布局和过多的绘制，偶尔也需要执行一些耗时的计算密集任务，这正是字节码的用处。

Note: For this to work, .wasm files should be returned with an **application/wasm** MIME type by the server.

WebAssembly 字节码文件有文本格式 .wat 和二进制格式 .wasm 两种，可用 wat2wasm 工具进行转换。

WebAssembly key concepts

- **Module**: Represents a WebAssembly binary that has been compiled by the browser 
    into executable machine code. A Module is stateless and thus, like a Blob, 
    can be explicitly shared between windows and workers (via postMessage()). 
    A Module declares imports and exports just like an ES module.
- **Memory**: A resizable ArrayBuffer that contains the linear array of bytes 
    read and written by WebAssembly's low-level memory access instructions.
- **Table**: A resizable typed array of references (e.g. to functions) that could 
    not otherwise be stored as raw bytes in Memory (for safety and portability reasons).
- **Instance**: A Module paired with all the state it uses at runtime including 
    a Memory, Table, and set of imported values. An Instance is like an ES module 
    that has been loaded into a particular global with a particular set of imports.

大多数 WebAssembly 模块开发者使用 C 和 Rust 编写代码，然后编译成 WebAssembly，也有其他途径。

    git clone --depth=1 git@github.com:rustwasm/wasm-bindgen.git
    git clone --depth=1 git@github.com:bytecodealliance/wasmtime

目前 WASM 实际有多种工作模式：Emscripten、WASI和无任何依赖的纯粹模式，分别对应 Rust 编译目标：

002. wasm32_unknown_emscripten 🔒
003. wasm32_unknown_unknown 🔒 裸目标，该输出对其环境没有任何假设。
001. wasm64_unknown_unknown 🔒 裸目标，该输出对其环境没有任何假设。
004. wasm32_wasi 🔒 2019年发起的一个实验目标，尚在发展中，不应过于依赖。

The WebAssembly System Interface (WASI) 是一个扩展的 WASM 环境规范，它试图模拟一个完整的
操作系统，包括与文件系统、网络等系统调用功能，以提供一个 Web 之外的运行环境。

Standardizing WASI: A system interface to run WebAssembly outside the web

If you've got the Rust compiler installed then you can take some Rust source code:

    fn main() {
        println!("Hello, world!");
    }

and compile/run it with:

```sh
    $ rustup target add wasm32-wasi
    $ rustc hello.rs --target wasm32-wasi
    $ wasmtime hello.wasm
    Hello, world!
```

相比之下，wasm32 未知类型目标是一个 bare metal-like target，因此目标三元组中的未知部分未指定
操作系统，它在纯计算之外没有提供太多功能。unknown 即表示没有外部操作系统环境依赖。

安装好 Rust 环境之后仍然需要一个 wasm-pack 工具包，它需要 Node.js 的 npm 模块管理工具。同时
安装一个 cargo-generate 工具，方便用于从 git 仓库中克隆工程模板，然后克隆 wasm 模板项目：

    cargo install wasm-pack
    cargo install cargo-generate
    cargo generate --git https://github.com/rustwasm/wasm-pack-template

    wasm-pack build

    wasm-pack test --headless --firefox
    wasm-pack test --headless --chrome
    wasm-pack test --node

You can create a new Rust-WebAssembly webpack project by using the rustwasm webpack-template.

    npm init rust-webpack my-app

手动创建 WebAssembly 项目只需要使用 `cargo init --lib .` 命令创建一个库项目，并修改 Cargo.toml
配置引用依赖 wasm-bindgen，并且要指定库类型为 cdylib：

    [package]
    name = "rusty-react"
    version = "1.0.0"
    edition = "2021"

    [lib]
    crate-type = ["cdylib"]

    [dependencies]
    wasm-bindgen = "0.2"

其后使用 wasm_bindgen 编写代码：
Import JavaScript things into Rust and export Rust things to JavaScript.


```rust
    use wasm_bindgen::prelude::*;

    // Import the `window.alert` function from the Web.
    #[wasm_bindgen]
    extern "C" {
        fn alert(s: &str);
    }

    // Export a `greet` function from Rust to JavaScript, that alerts a
    // hello message.
    #[wasm_bindgen]
    pub fn greet(name: &str) {
        alert(&format!("Hello, {}!", name));
    }
```

注意，wasm-pack 默认构建方式是 bundler，是 npm 导入的包。如果使用 web 构建则可以在支持 module 
脚本的最新浏览器上直接加载，只需要将生成的入口脚本通过 import 语句导入即可使用：

    wasm-pack build --target bundler    --out-name wasm_bundler
    wasm-pack build --target nodejs     --out-name wasm_nodejs
    wasm-pack build --target web        --out-name wasm_web
    wasm-pack build --target no-modules --out-name wasm_nm

入口脚本默认名称为 project_name.js，可以指定编译输出文件名称。

Web 页面内容及脚本可以参考以下代码片段：

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WebAssembly test</title>
</head>
<body>
<!-- <script type="module" src="wasm.js"></script> -->
<script type="module">
  import init, { greet } from "./wasm.js";
  init().then( module => {
    module.greet(); // or greet();
  })
</script>
</body>
</html>
```

运行 Web 服务器打开以上页面即可以测试 WebAssembly 程序，可以使用专用的 Web 服务器，如 Nginx，
或者使用 PHP、Python 的开发用的 Web 测试服务器：

    php -S localhost:80 -t .
    python3 -m http.server

要在 Rust 中调用 Web API 或 JavaScript 对象，就需要通过 web_sys 和 js_sys 模块，使用命令
cargo add 添加相应的模块。例如，以下功能配置使用导入的 console 控制台信息日志方法。

    [dependencies.web-sys]
    version = "0.3.60"
    features = [
      'console',
      'Document',
      'Element',
      'HtmlElement',
      'Node',
      'Window',
    ]

手动导入 Web API 参考：

```rust
// lifted from the `console_log` example
#[wasm_bindgen]
extern "C" {
    #[wasm_bindgen(js_namespace = console)]
    fn log(a: &str);
}

macro_rules! console_log {
    ($($t:tt)*) => (log(&format_args!($($t)*).to_string()))
}


// extern crate web_sys;

// A macro to provide `println!(..)`-style syntax for `console.log` logging.
macro_rules! log {
    ( $( $t:tt )* ) => {
        web_sys::console::log_1(&format!( $( $t )* ).into());
    }
}
```

WebAssembly modules declare a sequence of imports, each with a module name and an 
import name. The module name for an extern { ... } block can be specified using 
#[link(wasm_import_module)], currently it defaults to "env".

Exports have only a single name. In addition to any extern functions the WebAssembly 
instance's default linear memory is exported as "memory".


```rust
// import a JS function called `foo` from the module `mod`
#[link(wasm_import_module = "mod")]
extern { fn foo(); }

// export a Rust function called `bar`
#[no_mangle]
pub extern fn bar() { /* ... */ }
```

Because of wasm's limited value types, these functions must operate only on primitive numeric types.

以下创建一个项目，直接在 Rust 代码中操作 Web Canvas 绘图，创建一个 lib 工程，并将 crate-type
设置为 cdylib 类型，然后添加 web-sys 和 wasm-bindgen 两个依赖，注意 features 设置了相关的
Web Canvas API 特性：

```sh
    > cargo new --lib wasm-canvas
    > cargo add --features console,CanvasRenderingContext2d,Document,Element,HtmlCanvasElement,Window web-sys
    > cargo add wasm-bindgen
```

```sh
    [package]
    name = "wasm-canvas"
    version = "0.1.0"
    edition = "2021"

    # See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html

    [lib]
    crate-type = ["cdylib"]

    [dependencies]
    wasm-bindgen = "0.2.83"
    web-sys = { version = "0.3.60", features = ["console", "CanvasRenderingContext2d", "Document", "Element", "HtmlCanvasElement", "Window"] }

    [dev-dependencies]
    wasm-bindgen-test = "0.2"
```

编写 lib.rs 代码：

```rust
use std::f64;
use wasm_bindgen::prelude::*;
use wasm_bindgen::JsCast;

#[wasm_bindgen(start)]
pub fn start() {
    let document = web_sys::window().unwrap().document().unwrap();
    let canvas = document.get_element_by_id("canvas").unwrap();
    let canvas: web_sys::HtmlCanvasElement = canvas
        .dyn_into::<web_sys::HtmlCanvasElement>()
        .map_err(|_|())
        .unwrap();

    let context = canvas
        .get_context("2d").unwrap().unwrap()
        .dyn_into::<web_sys::CanvasRenderingContext2d>().unwrap();

    context.begin_path();

    // Draw the outer circle.
    context.arc(75.0, 75.0, 50.0, 0.0, f64::consts::PI * 2.0).unwrap();

    // Darw the mouth.
    context.move_to(110.0, 75.0);
    context.arc(75.0, 75.0, 35.0, 0.0, f64::consts::PI).unwrap();

    // Darw eyes
    context.move_to(65.0, 65.0);
    context.arc(60.0, 65.0, 5.0, 0.0, f64::consts::PI * 2.0).unwrap();
    context.move_to(90.0, 65.0);
    context.arc(90.0, 65.0, 5.0, 0.0, f64::consts::PI * 2.0).unwrap();

    context.stroke();
}
```

编译项目，生成入口脚本 wasm2d.js 并在页面中加载它，因为使用了入口标注 #[wasm_bindgen(start)]，
初始化方法执行后就会自动绘画：

```sh
    wasm-pack build --target web --out-name wasm2d
```

HTML 页面模板参考：

```html
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>WebAssembly Canvas2D</title>
    </head>
    <body>
      <canvas id="canvas" height="150" width="150"></canvas>
      <script type="module">
        import init from "./wasm2d.js";
        init().then( module => {
          console.log(module, init);
        })
      </script>
    </body>
    </html>
```

文档参考：

- [wasm-bindgen canvas online](https://rustwasm.github.io/wasm-bindgen/exbuild/canvas/)
- [wasm-bindgen canvas code](https://github.com/rustwasm/wasm-bindgen/tree/master/examples/canvas)
- [MDN Canvas API tutorial](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Drawing_shapes)


How to Add WebAssembly Support to a General-Purpose Crate

This build in-itself did not do much for us, we’ll need to add a useful taraget 
for our builds. To add a new target for Rust, we can run the following command:

    $ rustup target add wasm32-unknown-unknown

    $ cargo build --target wasm32-unknown-unknown

Let’s install the wasm-bindgen-cli command-line application so we can leverage the WebAssembly code we created:

    $ cargo install -f wasm-bindgen-cli

Once installed, we can take our WebAssembly code generated by Rust and create a wrapping around it for our React code:

    $ wasm-bindgen target/wasm32-unknown-unknown/debug/simple.wasm --out-dir build

This will dump the Javascript wrapping and optimized Wasm code into our build directory ready to be used by React. And that’s what we’ll do next!


The quickest, most efficient way to fetch a wasm module is using the newer 
WebAssembly.instantiateStreaming() method, which can take a fetch() call as its 
first argument, and will handle fetching, compiling, and instantiating the module 
in one step, accessing the raw byte code as it streams from the server:

```js
WebAssembly.instantiateStreaming(fetch("simple.wasm"), importObject).then(
  (results) => {
    // Do something with the results!
  }
);
```

If we used the older WebAssembly.instantiate() method, which doesn't work on the
direct stream, we'd need an extra step of converting the fetched byte code to an 
ArrayBuffer, like so:

```js
fetch("module.wasm")
  .then((response) => response.arrayBuffer())
  .then((bytes) => WebAssembly.instantiate(bytes, importObject))
  .then((results) => {
    // Do something with the results!
  });
```

注意，importObject 对象包含要导入到新创建的实例中的值，例如函数或 WebAssembly.Memory 内存对象。
编译模块或 WebAssembly 的每个声明导入必须有一个匹配属性，否则引发 LinkError。一般，导入文件自动生成。



# 🟡🟠 OpenCV in Rust
- https://docs.rs/opencv/0.49.1/opencv/
- https://github.com/twistedfall/opencv-rust
- Rust OpenCV bindings https://crates.io/crates/opencv

依赖项：

    [dependencies]
    opencv = "0.49.*"




# 🟡🟠 rustc-serialize
- https://docs.rs/rustc-serialize/0.3.24/rustc_serialize/

些工具提供 3 个模块：

- base64    Base64 binary-to-text encoding
- hex   Hex binary-to-text encoding
- json  JSON parsing and serialization

配置 Cargo.toml 使用：

    [dependencies]
    rustc-serialize = "0.3"

and this to your crate root:

    extern crate rustc_serialize;

JSON 示例：

```rust,ignore
extern crate rustc_serialize;
use rustc_serialize::json;

// Automatically generate `RustcDecodable` and `RustcEncodable` trait
// implementations
#[derive(RustcDecodable, RustcEncodable)]
pub struct TestStruct  {
    data_int: u8,
    data_str: String,
    data_vector: Vec<u8>,
}

fn main() {
    let object = TestStruct {
        data_int: 1,
        data_str: "homura".to_string(),
        data_vector: vec![2,3,4,5],
    };

    // Serialize using `json::encode`
    let encoded = json::encode(&object).unwrap();

    // Deserialize using `json::decode`
    let decoded: TestStruct = json::decode(&encoded).unwrap();
}
```

Verbose example of ToJson usage

```rust,ignore
extern crate rustc_serialize;
use std::collections::BTreeMap;
use rustc_serialize::json::{self, Json, ToJson};

// Only generate `Decodable` trait implementation
#[derive(RustcDecodable)]
pub struct TestStruct {
    data_int: u8,
    data_str: String,
    data_vector: Vec<u8>,
}

// Specify encoding method manually
impl ToJson for TestStruct {
    fn to_json(&self) -> Json {
        let mut d = BTreeMap::new();
        // All standard types implement `to_json()`, so use it
        d.insert("data_int".to_string(), self.data_int.to_json());
        d.insert("data_str".to_string(), self.data_str.to_json());
        d.insert("data_vector".to_string(), self.data_vector.to_json());
        Json::Object(d)
    }
}

fn main() {
    // Serialize using `ToJson`
    let input_data = TestStruct {
        data_int: 1,
        data_str: "madoka".to_string(),
        data_vector: vec![2,3,4,5],
    };
    let json_obj: Json = input_data.to_json();
    let json_str: String = json_obj.to_string();

    // Deserialize like before
    let decoded: TestStruct = json::decode(&json_str).unwrap();
}
```




# 🟡🟠 webview_sys
- https://docs.rs/web-view/0.6.3/web_view/
- https://lib.rs/crates/webview-sys
- https://github.com/webview/webview
- https://github.com/Boscop/web-view/tree/master/webview-examples/examples

修改配置文件 Cargo.toml 根据需要添加依赖，指定 Edge 浏览器内核需要 Windows 10 SDK，可以在 Visual Studio 安装程序中增加：

```rust,ignore
[dependencies]
web-view = { version = "0.7" }
web-view = { version = "0.7", features = ["edge"] }
web-view = { git = "https://github.com/Boscop/web-view", rev = "0d92ed6" }
```

然后编写测试程序：

```rust,ignore
use web_view::*;

fn main() {
    let html_content = "<html><body><h1>Hello, World!</h1></body></html>";
    let url = "file:///C:/coding/md-code/deno/demos/src/douyin/videos.html";

    web_view::builder()
        .title("My Project")
        .content(Content::Url(url))
        // .content(Content::Html(html_content))
        .size(320, 480)
        .resizable(false)
        .debug(true)
        .user_data(())
        .invoke_handler(|_webview, _arg| Ok(()))
        .run()
        .unwrap();
}
```

页面交互：

```rust,ignore
// ... Simplified for the sake of brevity.
web_view::builder()    
    .invoke_handler(|webview, arg| {
        match arg {
            "test_one" => {
                // Do something in Rust!
            }
            "test_two" => {
                // Invoke a JavaScript function!
                webview.eval(&format!("myFunction({}, {})", 123, 456))
            }
            _ => unimplemented!(),
        };
    })
```

```rust,ignore
// Executes our "invoke_handler" - passing the value "test_one" as the second parameter.
external.invoke('test_one');

// Executes our "invoke_handler", which in turn calls "myFunction" below.
external.invoke('test_two');

function myFunction(paramOne, paramTwo) {
    console.log(paramOne);
    console.log(paramTwo);
}
```


Boscop web-view 项目管理参考，项目结构如下：

- 主项目包含两个子项目 webview-sys 和 webview-examples；
- 主项目依赖子项目 webview-sys，这个子项目负责绑定 Webview C++ API；
- 子项目 webview-examples 依赖主项目，这个子项目只提供示范程序；

主项目配置文件：

```rust,ignore
[package]
name = "web-view"
version = "0.7.3"
authors = ["Boscop", "zxey <r.hozak@seznam.cz>", "Sam Green <sam.green81@gmail.com>"]
readme = "README.md"
license = "MIT"
repository = "https://github.com/Boscop/web-view"
description = "Rust bindings for webview, a tiny cross-platform library to render web-based GUIs for desktop applications"
keywords = ["web", "gui", "desktop", "electron", "webkit"]
categories = ["gui", "web-programming", "api-bindings", "rendering", "visualization"]
exclude = ["webview-sys/**", "webview-examples/**", ".github/**", "Cargo.lock"]

[dependencies]
urlencoding = "1.1"
webview-sys = { path = "webview-sys", version = "0.6.2" }
boxfnonce = "0.1"
tinyfiledialogs = "3.3"

[features]
edge = ["webview-sys/edge"]

[workspace]
members = [
    "webview-sys",
    "webview-examples",
]
```

webview-sys 配置文件：

```rust,ignore
[package]
name = "webview-sys"
version = "0.6.2"
authors = ["Boscop", "zxey <r.hozak@seznam.cz>"]
license = "MIT"
repository = "https://github.com/Boscop/web-view"
description = "Rust native ffi bindings for webview"
keywords = ["web", "gui", "desktop", "electron", "webkit"]
categories = ["gui", "web-programming", "api-bindings", "rendering", "visualization"]
build = "build.rs"
links = "webview"
edition = "2018"
exclude = ["Cargo.lock"]

[lib]
name = "webview_sys"
path = "lib.rs"

[features]
edge = []

[target.'cfg(all(target_family = "unix", not(target_os = "macos")))'.dependencies]
javascriptcore-rs-sys = "0.2"
gtk-sys = "0.10"
glib-sys = "0.10"
gobject-sys = "0.10"
webkit2gtk-sys = { version = "0.12.0", features = ["v2_8"] }
gdk-sys = "0.10"
gio-sys = "0.10"
libc = "0.2"

[build-dependencies]
cc = "1"
pkg-config = "0.3"
```

webview-examples 配置文件：

```rust,ignore
[package]
name = "webview-examples"
version = "0.1.0"
authors = ["Boscop", "zxey <r.hozak@seznam.cz>", "Sam Green <sam.green81@gmail.com>"]
license = "MIT"
repository = "https://github.com/Boscop/web-view"
description = "Examples of using Web frontend technologies in desktop apps using the web-view crate"
keywords = ["web", "gui", "desktop", "electron", "webkit"]
categories = ["gui", "web-programming", "api-bindings", "rendering", "visualization"]
exclude = ["examples/todo-ps/dist/**/*", "examples/elm-counter/index.html"]
publish = false

[dependencies]
web-view = { path = "..", version = "0.7.3" }

[features]
edge = ["web-view/edge"]

[dev-dependencies]
tinyfiledialogs = "3.3"
serde = "1.0"
serde_derive = "1.0"
serde_json = "1.0"
actix-web = "1.0"
actix-rt = "0.2"
rust-embed = "5.1.0"
mime_guess = "2.0.1"
futures = "0.1"
grep = "0.2.4"
walkdir = "2.3.1"
```

# 🟡🟠 Ruffle SWF Player
- https://ruffle.rs/#usage

克隆代码：

    git clone git@github.com:ruffle-rs/ruffle.git

API 兼容性

- ActionScript 1 & 2 Language 85%
- ActionScript 1 & 2 API 50%
- ActionScript 3 Language 10%
- ActionScript 3 API 5%

ActionScript is the language which Flash uses to make interactive content. It is primarily split into two groups: "AVM 1" (ActionScript 1 & 2) and "AVM 2" (ActionScript 3).

AVM 1 is ActionScript 1 and ActionScript 2. All movies made before Flash Player 9 (June 2006) will be made with AVM 1, and it remained supported & available to authors until the release of Flash Professional CC (2013).

AVM2 is ActionScript 3, which was introduced with Flash Player 9 (June 2006). After the release of Flash Professional CC (2013), authors are required to use ActionScript 3 - making any movie made after that date very likely to fall under this category.

Ruffle is still working on the foundational support for AVM 2, and does not yet support any content that requires it. A warning will be placed in the log when you attempt to play AVM 2 content, for this reason. We do plan on supporting this soon!




# 🟡🟠 Rust Reference
- The Rust Standard Library https://doc.rust-lang.org/stable/std/index.html
- The Rust Reference https://doc.rust-lang.org/reference/introduction.html
- Rust Language Cheat Sheet https://cheats.rs

## ⚡ Primitive Types

- `never`   ❤ The `!` type, also called "never".
- `array`   A fixed-size array, denoted [T; N], for the element type, T, and the non-negative compile-time constant size, N.
- `bool`    The boolean type.
- `char`    A character type.
- `f32` A 32-bit floating point type (specifically, the "binary32" type defined in IEEE 754-2008).
- `f64` A 64-bit floating point type (specifically, the "binary64" type defined in IEEE 754-2008).
- `fn`  Function pointers, like fn(usize) -> bool.
- `i8`  The 8-bit signed integer type.
- `i16` The 16-bit signed integer type.
- `i32` The 32-bit signed integer type.
- `i64` The 64-bit signed integer type.
- `i128`    The 128-bit signed integer type.
- `isize`   The pointer-sized signed integer type.
- `pointer` Raw, unsafe pointers, *const T, and *mut T.
- `reference`   References, both shared and mutable.
- `slice`   A dynamically-sized view into a contiguous sequence, [T]. Contiguous 意思是各元素间保持相同的间隔。
- `str` String slices.
- `tuple`   A finite heterogeneous sequence, (T, U, ..).
- `u8`  The 8-bit unsigned integer type.
- `u16` The 16-bit unsigned integer type.
- `u32` The 32-bit unsigned integer type.
- `u64` The 64-bit unsigned integer type.
- `u128`    The 128-bit unsigned integer type.
- `unit`    The `()` type, also called "unit".
- `usize`   The pointer-sized unsigned integer type.

## ⚡ Modules

- `backtrace`   ❤ Support for capturing a stack backtrace of an OS thread
- `intrinsics`  ❤ Compiler intrinsics.
- `lazy`    ❤ Lazy values and one-time initialization of static data.
- `raw` ❤ Contains struct definitions for the layout of compiler built-in types.
- `alloc`   Memory allocation APIs.
- `any` This module implements the Any trait, which enables dynamic typing of any 'static type through runtime reflection.
- `array`   实现像 Eq 一样的定长数组。
- `ascii`   Operations on ASCII strings and characters.
- `borrow`  A module for working with borrowed data.
- `boxed`   A pointer type for heap allocation.
- `cell`    Shareable mutable containers.
- `char`    A character type.
- `clone`   The Clone trait for types that cannot be 'implicitly copied'.
- `cmp` Functionality for ordering and comparison.
- `collections` Collection types.
- `convert` Traits for conversions between types.
- `default` The Default trait for types which may have meaningful default values.
- `env` Inspection and manipulation of the process's environment.
- `error`   Traits for working with Errors.
- `f32` This module provides constants which are specific to the implementation of the f32 floating point data type.
- `f64` This module provides constants which are specific to the implementation of the f64 floating point data type.
- `ffi` Utilities related to FFI bindings.
- `fmt` Utilities for formatting and printing Strings.
- `fs`  Filesystem manipulation operations.
- `future`  Asynchronous values.
- `hash`    Generic hashing support.
- `hint`    Hints to compiler that affects how code should be emitted or optimized. Hints may be compile time or runtime.
- `i8`  The 8-bit signed integer type.
- `i16` The 16-bit signed integer type.
- `i32` The 32-bit signed integer type.
- `i64` The 64-bit signed integer type.
- `i128`    The 128-bit signed integer type.
- `io`  Traits, helpers, and type definitions for core I/O functionality.
- `isize`   The pointer-sized signed integer type.
- `iter`    Composable external iteration.
- `marker`  Primitive traits and types representing basic properties of types.
- `mem` Basic functions for dealing with memory.
- `net` Networking primitives for TCP/UDP communication.
- `num` Additional functionality for numerics.
- `ops` Overloadable operators.
- `option`  Optional values.
- `os`  OS-specific functionality.
- `panic`   Panic support in the standard library.
- `path`    Cross-platform path manipulation.
- `pin` Types that pin data to its location in memory.
- `prelude` The Rust Prelude.
- `primitive`   This module reexports the primitive types to allow usage that is not possibly shadowed by other declared types.
- `process` A module for working with processes.
- `ptr` Manually manage memory through raw pointers.
- `rc`  Single-threaded reference-counting pointers. 'Rc' stands for 'Reference Counted'.
- `result`  Error handling with the Result type.
- `slice`   A dynamically-sized view into a contiguous sequence, [T].
- `str` Unicode string slices.
- `string`  A UTF-8–encoded, growable string.
- `sync`    Useful synchronization primitives.
- `task`    Types and Traits for working with asynchronous tasks.
- `thread`  Native threads.
- `time`    Temporal quantification.
- `u8`  The 8-bit unsigned integer type.
- `u16` The 16-bit unsigned integer type.
- `u32` The 32-bit unsigned integer type.
- `u64` The 64-bit unsigned integer type.
- `u128`    The 128-bit unsigned integer type.
- `usize`   The pointer-sized unsigned integer type.
- `vec` A contiguous growable array type with heap-allocated contents, written Vec<T>.

## ⚡ Macros

- `asm` ❤ Inline assembly.
- `concat_idents`   ❤ Concatenates identifiers into one identifier.
- `format_args_nl`  ❤ Same as format_args, but adds a newline in the end.
- `global_asm`  ❤ Module-level inline assembly.
- `is_aarch64_feature_detected` ❤ 如果在非 aarch64 平台使用则阻止编译。
- `is_arm_feature_detected` ❤ 如果在非 ARM 平台使用则阻止编译。
- `is_mips64_feature_detected`  ❤ 如果在非 MIPS64 平台使用则阻止编译。
- `is_mips_feature_detected`    ❤ 如果在非 MIPS 平台使用则阻止编译。
- `is_powerpc64_feature_detected`   ❤ 如果在非 PowerPC64 平台使用则阻止编译。
- `is_powerpc_feature_detected` ❤ 如果在非 PowerPC 平台使用则阻止编译。
- `llvm_asm`    ❤ LLVM-style inline assembly.
- `log_syntax`  ❤ Prints passed tokens into the standard output.
- `trace_macros`    ❤ Enables or disables tracing functionality used for debugging other macros.
- `assert`  Asserts that a boolean expression is true at runtime.
- `assert_eq`   Asserts that two expressions are equal to each other (using PartialEq).
- `assert_ne`   Asserts that two expressions are not equal to each other (using PartialEq).
- `cfg` Evaluates boolean combinations of configuration flags at compile-time.
- `column`  Expands to the column number at which it was invoked.
- `compile_error`   Causes compilation to fail with the given error message when encountered.
- `concat`  Concatenates literals into a static string slice.
- `dbg` Prints and returns the value of a given expression for quick and dirty debugging.
- `debug_assert`    Asserts that a boolean expression is true at runtime.
- `debug_assert_eq` Asserts that two expressions are equal to each other.
- `debug_assert_ne` Asserts that two expressions are not equal to each other.
- `env` Inspects an environment variable at compile time.
- `eprint`  Prints to the standard error.
- `eprintln`    Prints to the standard error, with a newline.
- `file`    Expands to the file name in which it was invoked.
- `format`  Creates a String using interpolation of runtime expressions.
- `format_args` Constructs parameters for the other string-formatting macros.
- `include` Parses a file as an expression or an item according to the context.
- `include_bytes`   Includes a file as a reference to a byte array.
- `include_str` Includes a UTF-8 encoded file as a string.
- `is_x86_feature_detected` A macro to test at runtime whether a CPU feature is available on x86/x86-64 platforms.
- `line`    Expands to the line number on which it was invoked.
- `matches` Returns whether the given expression matches any of the given patterns.
- `module_path` Expands to a string that represents the current module path.
- `option_env`  Optionally inspects an environment variable at compile time.
- `panic`   Panics the current thread.
- `print`   Prints to the standard output.
- `println` Prints to the standard output, with a newline.
- `stringify`   Stringifies its arguments.
- `thread_local`    Declare a new thread local storage key of type std::thread::LocalKey.
- `todo`    Indicates unfinished code.
- `try` DeprecatedUnwraps a result or propagates its error.
- `unimplemented`   Indicates unimplemented code by panicking with a message of "not implemented".
- `unreachable` Indicates unreachable code.
- `vec` Creates a Vec containing the arguments.
- `write`   Writes formatted data into a buffer.
- `writeln` Write formatted data into a buffer, with a newline appended.


## ⚡ Keywords

The following keywords currently have the functionality described.

* `as` - perform primitive casting, disambiguate the specific trait containing
  an item, or rename items in `use` and `extern crate` statements
* `async` -  return a `Future` instead of blocking the current thread
* `await` - suspend execution until the result of a `Future` is ready
* `break` - exit a loop immediately
* `const` - define constant items or constant raw pointers
* `continue` - continue to the next loop iteration
* `crate` - link an external crate or a macro variable representing the crate in
  which the macro is defined
* `dyn` - dynamic dispatch to a trait object
* `else` - fallback for `if` and `if let` control flow constructs
* `enum` - define an enumeration
* `extern` - link an external crate, function, or variable
* `false` - Boolean false literal
* `fn` - define a function or the function pointer type
* `for` - loop over items from an iterator, implement a trait, or specify a
  higher-ranked lifetime
* `if` - branch based on the result of a conditional expression
* `impl` - implement inherent or trait functionality
* `in` - part of `for` loop syntax
* `let` - bind a variable
* `loop` - loop unconditionally
* `match` - match a value to patterns
* `mod` - define a module
* `move` - make a closure take ownership of all its captures
* `mut` - denote mutability in references, raw pointers, or pattern bindings
* `pub` - denote public visibility in struct fields, `impl` blocks, or modules
* `ref` - bind by reference
* `return` - return from function
* `Self` - a type alias for the type we are defining or implementing
* `self` - method subject or current module
* `static` - global variable or lifetime lasting the entire program execution
* `struct` - define a structure
* `super` - parent module of the current module
* `trait` - define a trait
* `true` - Boolean true literal
* `type` - define a type alias or associated type
* `union` - define a [union] and is only a keyword when used in a union declaration
* `unsafe` - denote unsafe code, functions, traits, or implementations
* `use` - bring symbols into scope
* `where` - denote clauses that constrain a type
* `while` - loop conditionally based on the result of an expression

Keywords Reserved for Future Use

* `abstract`
* `become`
* `box`
* `do`
* `final`
* `macro`
* `override`
* `priv`
* `try`
* `typeof`
* `unsized`
* `virtual`
* `yield`


## ⚡ Operators and Symbols

This appendix contains a glossary of Rust’s syntax, including operators and
other symbols that appear by themselves or in the context of paths, generics,
trait bounds, macros, attributes, comments, tuples, and brackets.

Table B-1: Operators

| Operator | Example | Explanation | Overloadable? |
|----------|---------|-------------|---------------|
| `!`   | `ident!(...)`, `ident!{...}`, `ident![...]` | Macro expansion | |
| `!`   | `!expr` | Bitwise or logical complement | `Not` |
| `!=`  | `var != expr` | Nonequality comparison | `PartialEq` |
| `%`   | `expr % expr` | Arithmetic remainder | `Rem` |
| `%=`  | `var %= expr` | Arithmetic remainder and assignment | `RemAssign` |
| `&`   | `&expr`, `&mut expr` | Borrow | |
| `&`   | `&type`, `&mut type`, `&'a type`, `&'a mut type` | Borrowed pointer type | |
| `&`   | `expr & expr` | Bitwise AND | `BitAnd` |
| `&=`  | `var &= expr` | Bitwise AND and assignment | `BitAndAssign` |
| `&&`  | `expr && expr` | Short-circuiting logical AND | |
| `*`   | `expr * expr` | Arithmetic multiplication | `Mul` |
| `*=`  | `var *= expr` | Arithmetic multiplication and assignment | `MulAssign` |
| `*`   | `*expr` | Dereference | |
| `*`   | `*const type`, `*mut type` | Raw pointer | |
| `+`   | `trait + trait`, `'a + trait` | Compound type constraint | |
| `+`   | `expr + expr` | Arithmetic addition | `Add` |
| `+=`  | `var += expr` | Arithmetic addition and assignment | `AddAssign` |
| `,`   | `expr, expr` | Argument and element separator | |
| `-`   | `- expr` | Arithmetic negation | `Neg` |
| `-`   | `expr - expr` | Arithmetic subtraction | `Sub` |
| `-=`  | `var -= expr` | Arithmetic subtraction and assignment | `SubAssign` |
| `->`  | `fn(...) -> type`, `|...| -> type|` | Function and closure return type | |
| `.`   | `expr.ident` | Member access | |
| `..`  | `..`, `expr..`, `..expr`, `expr..expr` | Right-exclusive range literal | |
| `..=` | `..=expr`, `expr..=expr` | Right-inclusive range literal | |
| `..`  | `..expr` | Struct literal update syntax | |
| `..`  | `variant(x, ..)`, `struct_type { x, .. }` | “And the rest” pattern binding | |
| `...` | `expr...expr` | In a pattern: inclusive range pattern | |
| `/`   | `expr / expr` | Arithmetic division | `Div` |
| `/=`  | `var /= expr` | Arithmetic division and assignment | `DivAssign` |
| `:`   | `pat: type`, `ident: type` | Constraints | |
| `:`   | `ident: expr` | Struct field initializer | |
| `:`   | `'a: loop {...}` | Loop label | |
| `;`   | `expr;`      | Statement and item terminator | |
| `;`   | `[...; len]` | Part of fixed-size array syntax | |
| `<<`  | `expr << expr` | Left-shift | `Shl` |
| `<<=` | `var <<= expr` | Left-shift and assignment | `ShlAssign` |
| `<`   | `expr < expr` | Less than comparison | `PartialOrd` |
| `<=`  | `expr <= expr` | Less than or equal to comparison | `PartialOrd` |
| `=`   | `var = expr`, `ident = type` | Assignment/equivalence | |
| `==`  | `expr == expr` | Equality comparison | `PartialEq` |
| `=>`  | `pat => expr` | Part of match arm syntax | |
| `>`   | `expr > expr` | Greater than comparison | `PartialOrd` |
| `>=`  | `expr >= expr` | Greater than or equal to comparison | `PartialOrd` |
| `>>`  | `expr >> expr` | Right-shift | `Shr` |
| `>>=` | `var >>= expr` | Right-shift and assignment | `ShrAssign` |
| `@`   | `ident @ pat` | Pattern binding | |
| `^`   | `expr ^ expr` | Bitwise exclusive OR | `BitXor` |
| `^=`  | `var ^= expr` | Bitwise exclusive OR and assignment | `BitXorAssign` |
| `|`   | `pat | pat`   | Pattern alternatives | |
| `|`   | `expr | expr` | Bitwise OR | `BitOr` |
| `|=`  | `var |= expr` | Bitwise OR and assignment | `BitOrAssign` |
| `||`  | `expr || expr` | Short-circuiting logical OR | |
| `?`   | `expr?`       | Error propagation | |


Table B-2: Stand-Alone Syntax

| Symbol | Explanation |
|--------|-------------|
| `'ident` | Named lifetime or loop label |
| `...u8`, `...i32`, `...f64`, `...usize`, etc. | Numeric literal of specific type |
| `"..."` | String literal |
| `r"..."`, `r#"..."#`, `r##"..."##`, etc. | Raw string literal, escape characters not processed |
| `b"..."` | Byte string literal; constructs a `[u8]` instead of a string |
| `br"..."`, `br#"..."#`, `br##"..."##`, etc. | Raw byte string literal, combination of raw and byte string literal |
| `'...'` | Character literal |
| `b'...'` | ASCII byte literal |
| `|...| expr` | Closure |
| `!` | Always empty bottom type for diverging functions |
| `_` | “Ignored” pattern binding; also used to make integer literals readable |


Table B-3: Path-Related Syntax

| Symbol | Explanation |
|--------|-------------|
| `ident::ident` | Namespace path |
| `::path` | Path relative to the crate root (i.e., an explicitly absolute path) |
| `self::path` | Path relative to the current module (i.e., an explicitly relative path).
| `super::path` | Path relative to the parent of the current module |
| `type::ident`, `<type as trait>::ident` | Associated constants, functions, and types |
| `<type>::...` | Associated item for a type that cannot be directly named (e.g., `<&T>::...`, `<[T]>::...`, etc.) |
| `trait::method(...)` | Disambiguating a method call by naming the trait that defines it |
| `type::method(...)` | Disambiguating a method call by naming the type for which it’s defined |
| `<type as trait>::method(...)` | Disambiguating a method call by naming the trait and type |


Table B-4: Generics

| Symbol | Explanation |
|--------|-------------|
| `path<...>` | Specifies parameters to generic type in a type (e.g., `Vec<u8>`) |
| `path::<...>`, `method::<...>` | Specifies parameters to generic type, function, or method in an expression; often referred to as turbofish (e.g., `"42".parse::<i32>()`) |
| `fn ident<...> ...` | Define generic function |
| `struct ident<...> ...` | Define generic structure |
| `enum ident<...> ...` | Define generic enumeration |
| `impl<...> ...` | Define generic implementation |
| `for<...> type` | Higher-ranked lifetime bounds |
| `type<ident=type>` | A generic type where one or more associated types have specific assignments (e.g., `Iterator<Item=T>`) |

Table B-5: Trait Bound Constraints

| Symbol | Explanation |
|--------|-------------|
| `T: U` | Generic parameter `T` constrained to types that implement `U` |
| `T: 'a` | Generic type `T` must outlive lifetime `'a` (meaning the type cannot transitively contain any references with lifetimes shorter than `'a`) |
| `T : 'static` | Generic type `T` contains no borrowed references other than `'static` ones |
| `'b: 'a` | Generic lifetime `'b` must outlive lifetime `'a` |
| `T: ?Sized` | Allow generic type parameter to be a dynamically sized type |
| `'a + trait`, `trait + trait` | Compound type constraint |

Table B-6: Macros and Attributes

| Symbol | Explanation |
|--------|-------------|
| `#[meta]` | Outer attribute |
| `#![meta]` | Inner attribute |
| `$ident` | Macro substitution |
| `$ident:kind` | Macro capture |
| `$(…)…` | Macro repetition |
| `ident!(...)`, `ident!{...}`, `ident![...]` | Macro invocation |


Table B-7: Comments

| Symbol | Explanation |
|--------|-------------|
| `//` | Line comment |
| `//!` | Inner line doc comment |
| `///` | Outer line doc comment |
| `/*...*/` | Block comment |
| `/*!...*/` | Inner block doc comment |
| `/**...*/` | Outer block doc comment |


Table B-8: Tuples

| Symbol | Explanation |
|--------|-------------|
| `()` | Empty tuple (aka unit), both literal and type |
| `(expr)` | Parenthesized expression |
| `(expr,)` | Single-element tuple expression |
| `(type,)` | Single-element tuple type |
| `(expr, ...)` | Tuple expression |
| `(type, ...)` | Tuple type |
| `expr(expr, ...)` | Function call expression; also used to initialize tuple `struct`s and tuple `enum` variants |
| `expr.0`, `expr.1`, etc. | Tuple indexing |


Table B-9: Curly Brackets

| Context | Explanation |
|---------|-------------|
| `{...}` | Block expression |
| `Type {...}` | `struct` literal |


Table B-10: Square Brackets

| Context | Explanation |
|---------|-------------|
| `[...]` | Array literal |
| `[expr; len]` | Array literal containing `len` copies of `expr` |
| `[type; len]` | Array type containing `len` instances of `type` |
| `expr[expr]` | Collection indexing. Overloadable (`Index`, `IndexMut`) |
| `expr[..]`, `expr[a..]`, `expr[..b]`, `expr[a..b]` | Collection indexing pretending to be collection slicing, using `Range`, `RangeFrom`, `RangeTo`, or `RangeFull` as the “index” |


## ⚡ Struct TypeId & Trait Any
- A type to emulate dynamic typing https://static.rust-lang.org/doc/master/std/any/trait.Any.html
- TypeId https://static.rust-lang.org/doc/master/std/any/struct.TypeId.html
- quote! https://docs.rs/quote/1.0.9/quote/
- parser https://docs.rs/syn/1.0.64/syn/
- Rust入坑指南：万物初始 https://www.jianshu.com/p/f26591569b98
- Introduction to Procedural Macros in Rust https://tinkering.xyz/introduction-to-proc-macros/
- Procedural Macros in Rust 2018 https://blog.rust-lang.org/2018/12/21/Procedural-Macros-in-Rust-2018.html
- 3.2. Procedural Macros https://doc.rust-lang.org/reference/procedural-macros.html

反射 reflection 意味着可以在运行时获得类型的所有详细信息，包括字段方法等，并可以进行替换。

Rust 只有“compile-time reflection”，只有 any 可以算是起到了部分反射的功能，不过社区有人实现了利用过程宏 reflect 实现的编译时反射功能，以实现依赖注入等反射功能。

std:any 起到以下几个作用：

- 获取类型的名字
- 获得变量的类型 TypeId
- 判断变量是否是指定类型
- 把 any 转换成指定类型

- downcast_ref::<T>() 将类型转型为 T，其返回的类型是 `Option<&T>`
- downcast_mut::<T>() 将类型转型为 T，其返回的类型是 `Option<&mut T>`
- TypeId::of::<T>() 获取 T 类型 TypeId 结构体。
- is::<T>() 方法则用来判断是否是某个类型。

```rust,ignore
use std::any::{Any, TypeId};

fn is_string<T: ?Sized + Any>(_s: &T) -> bool {
    TypeId::of::<String>() == TypeId::of::<T>()
}

fn main() {
    assert_eq!(is_string(&0), false);
    assert_eq!(is_string(&"cookie monster".to_string()), true);
}
```

```rust,ignore
use std::any::Any;

fn is_string(s: &(Any + Send)) {
    if s.is::<String>() {
        println!("It's a string!");
    } else {
        println!("Not a string...");
    }
}

fn main() {
    is_string(&0);
    is_string(&"cookie monster".to_string());
}
```

```rust,ignore
use std::fmt::Debug;
use std::any::Any;

// Logger function for any type that implements Debug.
fn do_log<T: Any + Debug>(value: &T) {
    let value_any = value as &Any;

    // try to convert our value to a String.  If successful, we want to
    // output the String's length as well as its value.  If not, it's a
    // different type: just print it out unadorned.
    match value_any.downcast_ref::<String>() {
        Some(as_string) => {
            println!("String ({}): {}", as_string.len(), as_string);
        }
        None => {
            println!("{:?}", value);
        }
    }
}

fn main() {
    let my_string = "Hello World".to_string();
    do_log(&my_string);

    let my_i8: i8 = 100;
    do_log(&my_i8);
}
```



## ⚡ Struct Cell
- Shareable mutable containers https://doc.rust-lang.org/std/cell/index.html
- https://doc.rust-lang.org/std/cell/struct.Cell.html

Rust 内存安全基于这样的规则：给定对象 T，满足且仅满足以下一个条件：

- 包含多个不可变引用 `&T`，即名句可以有多个；
- 只有一个可变引用 `&mut T`；

编译强制检查，确认不会存在多个可变引用，或都可变引用与不可变引用同时存在。

有时候，我们需要不可变引用的内部成员可变，在 Rust 叫做内部可变性 Internal mutability。那么，有如下选择：

- 单线程
    - 如果类型 T 实现了 trait Copy，那么可以使用 Cell<T>
    - 否则，可以使用 RefCell<T>
- 多线程
    - 使用互斥锁：Mutex<T>
    - 使用读写锁：RwLock<T>

它们内部都依赖底层的 UnsafeCell 实现，顾名思义这么做为 unsafe，但是编译器知道这些调用的地方需要特殊处理。

对于实现了 Copy 的类型，可以使用 `Cell<T>`：

- 获取：如果 T 实现了 Copy，则可以调用 `get()` 方法，获得 T 的一份逐 bit 拷贝
- 设置：使用 `set()` 方法
- 更新：使用 `update()` 设置并返回新值
- 替换：使用 `replace()` 方法
- 可变引用：`get_mut()` 方法获得 Cell 变量的可变引用，该方法继续遵循内存安全原则。

```rust,ignore
use std::cell::Cell;

struct SomeStruct {
    regular_field: u8,
    special_field: Cell<u8>,
}

let my_struct = SomeStruct {
    regular_field: 0,
    special_field: Cell::new(1),
};

let new_value = 100;

// ERROR: `my_struct` is immutable
// my_struct.regular_field = new_value;

// WORKS: although `my_struct` is immutable, `special_field` is a `Cell`,
// which can always be mutated
my_struct.special_field.set(new_value);
assert_eq!(my_struct.special_field.get(), new_value);
```

对于没有实现 Copy 的类型，例如 `String` 和 `Vec<T>` 要实现多个不可变借用内部成员的可变性，就需要使用 `RefCell<T>`：

- 内部 T 不可变借用：使用 `borrow()` 方法
- 内部 T 可变借用：使用 `borrow_mut()` 方法

以上两个方法依然遵守内存安全原则，即 `borrow()` `borrow_mut()` 不可以在同一作用域执行，这样会存在 `&T` `&mut T`。注意 `RefCell` 的借用规则在编译期不会检查，但是运行期违反会导致 panic。

```rust,ignore
use std::cell::{RefCell, RefMut};
use std::collections::HashMap;
use std::rc::Rc;

fn main() {
    let shared_map: Rc<RefCell<_>> = Rc::new(RefCell::new(HashMap::new()));
    // Create a new block to limit the scope of the dynamic borrow
    {
        let mut map: RefMut<_> = shared_map.borrow_mut();
        map.insert("africa", 92388);
        map.insert("kyoto", 11837);
        map.insert("piccadilly", 11826);
        map.insert("marbles", 38);
    }

    // Note that if we had not let the previous borrow of the cache fall out
    // of scope then the subsequent borrow would cause a dynamic thread panic.
    // This is the major hazard of using `RefCell`.
    let total: i32 = shared_map.borrow().values().sum();
    println!("{}", total);
}
```




## ⚡ Struct Vec
- https://doc.rust-lang.org/stable/std/vec/struct.Vec.html

Examples

    let mut vec = Vec::new();
    vec.push(1);
    vec.push(2);

    assert_eq!(vec.len(), 2);
    assert_eq!(vec[0], 1);

    assert_eq!(vec.pop(), Some(2));
    assert_eq!(vec.len(), 1);

    vec[0] = 7;
    assert_eq!(vec[0], 7);

    vec.extend([1, 2, 3].iter().copied());

    for x in &vec {
        println!("{}", x);
    }
    assert_eq!(vec, [7, 1, 2, 3]);

The vec! macro is provided to make initialization more convenient:

    let mut vec = vec![1, 2, 3];
    vec.push(4);
    assert_eq!(vec, [1, 2, 3, 4]);

It can also initialize each element of a Vec<T> with a given value. This may be more efficient than performing allocation and initialization in separate steps, especially when initializing a vector of zeros:

    let vec = vec![0; 5];
    assert_eq!(vec, [0, 0, 0, 0, 0]);

    // The following is equivalent, but potentially slower:
    let mut vec = Vec::with_capacity(5);
    vec.resize(5, 0);
    assert_eq!(vec, [0, 0, 0, 0, 0]);

For more information, see Capacity and Reallocation.

Use a Vec<T> as an efficient stack:

    let mut stack = Vec::new();

    stack.push(1);
    stack.push(2);
    stack.push(3);

    while let Some(top) = stack.pop() {
        // Prints 3, 2, 1
        println!("{}", top);
    }

Indexing
The Vec type allows to access values by index, because it implements the Index trait. An example will be more explicit:

    let v = vec![0, 2, 4, 6];
    println!("{}", v[1]); // it will display '2'

However be careful: if you try to access an index which isn't in the Vec, your software will panic! You cannot do this:

    let v = vec![0, 2, 4, 6];
    println!("{}", v[6]); // it will panic!

Use get and get_mut if you want to check whether the index is in the Vec.

Slicing
A Vec can be mutable. Slices, on the other hand, are read-only objects. To get a slice, use &. Example:

    fn read_slice(slice: &[usize]) {
        // ...
    }

    let v = vec![0, 1];
    read_slice(&v);

    // ... and that's all!
    // you can also do it like this:
    let u: &[usize] = &v;
    // or like this:
    let u: &[_] = &v;

## ⚡ Trait Iterator
- https://doc.rust-lang.org/stable/std/iter/index.html

迭代器模块提供了三大块内容：

- Structs
- Traits
- Functions

迭代器定义本身很简单，只有一个 `next()` 方法：

```rust,ignore
trait Iterator {
    type Item;
    fn next(&mut self) -> Option<Self::Item>;
}
```

但是，Rust 提供的 Traits 覆盖实现机制，可以为所有迭代器类型提供各种方法实现，即 blanket implementations。

例如，对迭代器求和的 `sum()` 方法，通过 trait Sum 接口提供：

```rust,ignore
pub trait Sum<A = Self> {
    pub fn sum<I>(iter: I) -> Self
    where
        I: Iterator<Item = A>;
}
```

    pub trait Iterator {
    type Item;
    pub fn next(&mut self) -> Option<Self::Item>;

    pub fn size_hint(&self) -> (usize, Option<usize>) { ... }
    pub fn count(self) -> usize { ... }
    pub fn last(self) -> Option<Self::Item> { ... }
    pub fn advance_by(&mut self, n: usize) -> Result<(), usize> { ... }
    pub fn nth(&mut self, n: usize) -> Option<Self::Item> { ... }
    pub fn step_by(self, step: usize) -> StepBy<Self>ⓘ { ... }
    pub fn chain<U>(self, other: U ) -> Chain<Self, <U as IntoIterator>::IntoIter>ⓘ where U: IntoIterator<Item = Self::Item>, { ... }
    pub fn zip<U>(self, other: U) -> Zip<Self, <U as IntoIterator>::IntoIter>ⓘ where U: IntoIterator, { ... }
    pub fn map<B, F>(self, f: F) -> Map<Self, F>ⓘ where F: FnMut(Self::Item) -> B, { ... }
    pub fn for_each<F>(self, f: F) where F: FnMut(Self::Item), { ... }
    pub fn filter<P>(self, predicate: P) -> Filter<Self, P>ⓘ where P: FnMut(&Self::Item) -> bool, { ... }
    pub fn filter_map<B, F>(self, f: F) -> FilterMap<Self, F>ⓘ where F: FnMut(Self::Item) -> Option<B>, { ... }
    pub fn enumerate(self) -> Enumerate<Self>ⓘ { ... }
    pub fn peekable(self) -> Peekable<Self>ⓘ { ... }
    pub fn skip_while<P>(self, predicate: P) -> SkipWhile<Self, P>ⓘ where P: FnMut(&Self::Item) -> bool, { ... }
    pub fn take_while<P>(self, predicate: P) -> TakeWhile<Self, P>ⓘ where P: FnMut(&Self::Item) -> bool, { ... }
    pub fn map_while<B, P>(self, predicate: P) -> MapWhile<Self, P>ⓘ where P: FnMut(Self::Item) -> Option<B>, { ... }
    pub fn skip(self, n: usize) -> Skip<Self>ⓘ { ... }
    pub fn take(self, n: usize) -> Take<Self>ⓘ { ... }
    pub fn scan<St, B, F>(self, initial_state: St, f: F) -> Scan<Self, St, F>ⓘ where F: FnMut(&mut St, Self::Item) -> Option<B>, { ... }
    pub fn flat_map<U, F>(self, f: F) -> FlatMap<Self, U, F>ⓘ where F: FnMut(Self::Item) -> U, U: IntoIterator, { ... }
    pub fn flatten(self) -> Flatten<Self>ⓘ where Self::Item: IntoIterator, { ... }
    pub fn fuse(self) -> Fuse<Self>ⓘ { ... }
    pub fn inspect<F>(self, f: F) -> Inspect<Self, F>ⓘ where F: FnMut(&Self::Item), { ... }
    pub fn by_ref(&mut self) -> &mut Selfⓘ { ... }

    pub fn collect<B>(self) -> B where B: FromIterator<Self::Item>, { ... }
    pub fn partition<B, F>(self, f: F) -> (B, B) where F: FnMut(&Self::Item) -> bool, B: Default + Extend<Self::Item>, { ... }
    pub fn partition_in_place<'a, T, P>(self, predicate: P) -> usize where Self: DoubleEndedIterator<Item = &'a mut T>, T: 'a, P: FnMut(&T) -> bool, { ... }
    pub fn is_partitioned<P>(self, predicate: P) -> bool where P: FnMut(Self::Item) -> bool, { ... }
    pub fn try_fold<B, F, R>(&mut self, init: B, f: F) -> R where F: FnMut(B, Self::Item) -> R, R: Try<Ok = B>, { ... }
    pub fn try_for_each<F, R>(&mut self, f: F) -> R where F: FnMut(Self::Item) -> R, R: Try<Ok = ()>, { ... }
    pub fn fold<B, F>(self, init: B, f: F) -> B where F: FnMut(B, Self::Item) -> B, { ... }
    pub fn fold_first<F>(self, f: F) -> Option<Self::Item> where F: FnMut(Self::Item, Self::Item) -> Self::Item, { ... }
    pub fn all<F>(&mut self, f: F) -> bool where F: FnMut(Self::Item) -> bool, { ... }
    pub fn any<F>(&mut self, f: F) -> bool where F: FnMut(Self::Item) -> bool, { ... }
    pub fn find<P>(&mut self, predicate: P) -> Option<Self::Item> where P: FnMut(&Self::Item) -> bool, { ... }
    pub fn find_map<B, F>(&mut self, f: F) -> Option<B> where F: FnMut(Self::Item) -> Option<B>, { ... }
    pub fn try_find<F, R>(&mut self, f: F ) -> Result<Option<Self::Item>, <R as Try>::Error> where F: FnMut(&Self::Item) -> R, R: Try<Ok = bool>, { ... }
    pub fn position<P>(&mut self, predicate: P) -> Option<usize> where P: FnMut(Self::Item) -> bool, { ... }
    pub fn rposition<P>(&mut self, predicate: P) -> Option<usize> where Self: ExactSizeIterator + DoubleEndedIterator, P: FnMut(Self::Item) -> bool, { ... }
    pub fn max(self) -> Option<Self::Item> where Self::Item: Ord, { ... }
    pub fn min(self) -> Option<Self::Item> where Self::Item: Ord, { ... }
    pub fn max_by_key<B, F>(self, f: F) -> Option<Self::Item> where F: FnMut(&Self::Item) -> B, B: Ord, { ... }
    pub fn max_by<F>(self, compare: F) -> Option<Self::Item> where F: FnMut(&Self::Item, &Self::Item) -> Ordering, { ... }
    pub fn min_by_key<B, F>(self, f: F) -> Option<Self::Item> where F: FnMut(&Self::Item) -> B, B: Ord, { ... }
    pub fn min_by<F>(self, compare: F) -> Option<Self::Item> where F: FnMut(&Self::Item, &Self::Item) -> Ordering, { ... }
    pub fn rev(self) -> Rev<Self>ⓘ where Self: DoubleEndedIterator, { ... }
    pub fn unzip<A, B, FromA, FromB>(self) -> (FromA, FromB) where Self: Iterator<Item = (A, B)>, FromA: Default + Extend<A>, FromB: Default + Extend<B>, { ... }
    pub fn copied<'a, T>(self) -> Copied<Self>ⓘ where Self: Iterator<Item = &'a T>, T: 'a + Copy, { ... }
    pub fn cloned<'a, T>(self) -> Cloned<Self>ⓘ where Self: Iterator<Item = &'a T>, T: 'a + Clone, { ... }
    pub fn cycle(self) -> Cycle<Self>ⓘ where Self: Clone, { ... }
    pub fn sum<S>(self) -> S where S: Sum<Self::Item>, { ... }
    pub fn product<P>(self) -> P where P: Product<Self::Item>, { ... }
    pub fn cmp<I>(self, other: I) -> Ordering where I: IntoIterator<Item = Self::Item>, Self::Item: Ord, { ... }
    pub fn cmp_by<I, F>(self, other: I, cmp: F) -> Ordering where F: FnMut(Self::Item, <I as IntoIterator>::Item) -> Ordering, I: IntoIterator, { ... }
    pub fn partial_cmp<I>(self, other: I) -> Option<Ordering> where I: IntoIterator, Self::Item: PartialOrd<<I as IntoIterator>::Item>, { ... }
    pub fn partial_cmp_by<I, F>(self, other: I, partial_cmp: F ) -> Option<Ordering> where F: FnMut(Self::Item, <I as IntoIterator>::Item) -> Option<Ordering>, I: IntoIterator, { ... }
    pub fn eq<I>(self, other: I) -> bool where I: IntoIterator, Self::Item: PartialEq<<I as IntoIterator>::Item>, { ... }
    pub fn eq_by<I, F>(self, other: I, eq: F) -> bool where F: FnMut(Self::Item, <I as IntoIterator>::Item) -> bool, I: IntoIterator, { ... }
    pub fn ne<I>(self, other: I) -> bool where I: IntoIterator, Self::Item: PartialEq<<I as IntoIterator>::Item>, { ... }
    pub fn lt<I>(self, other: I) -> bool where I: IntoIterator, Self::Item: PartialOrd<<I as IntoIterator>::Item>, { ... }
    pub fn le<I>(self, other: I) -> bool where I: IntoIterator, Self::Item: PartialOrd<<I as IntoIterator>::Item>, { ... }
    pub fn gt<I>(self, other: I) -> bool where I: IntoIterator, Self::Item: PartialOrd<<I as IntoIterator>::Item>, { ... }
    pub fn ge<I>(self, other: I) -> bool where I: IntoIterator, Self::Item: PartialOrd<<I as IntoIterator>::Item>, { ... }
    pub fn is_sorted(self) -> bool where Self::Item: PartialOrd<Self::Item>, { ... }
    pub fn is_sorted_by<F>(self, compare: F) -> bool where F: FnMut(&Self::Item, &Self::Item) -> Option<Ordering>, { ... }
    pub fn is_sorted_by_key<F, K>(self, f: F) -> bool where F: FnMut(Self::Item) -> K, K: PartialOrd<K>, { ... }
    }


Structs

- `MapWhile`    ExperimentalAn iterator that only accepts elements while predicate returns Some(_).
- `Chain`   An iterator that links two iterators together, in a chain.
- `Cloned`  An iterator that clones the elements of an underlying iterator.
- `Copied`  An iterator that copies the elements of an underlying iterator.
- `Cycle`   An iterator that repeats endlessly.
- `Empty`   An iterator that yields nothing.
- `Enumerate`   An iterator that yields the current count and the element during iteration.
- `Filter`  An iterator that filters the elements of iter with predicate.
- `FilterMap`   An iterator that uses f to both filter and map elements from iter.
- `FlatMap` An iterator that maps each element to an iterator, and yields the elements of the produced iterators.
- `Flatten` An iterator that flattens one level of nesting in an iterator of things that can be turned into iterators.
- `FromFn`  An iterator where each iteration calls the provided closure F: FnMut() -> Option<T>.
- `Fuse`    An iterator that yields None forever after the underlying iterator yields None once.
- `Inspect` An iterator that calls a function with a reference to each element before yielding it.
- `Map` An iterator that maps the values of iter with f.
- `Once`    An iterator that yields an element exactly once.
- `OnceWith`    An iterator that yields a single element of type A by applying the provided closure F: FnOnce() -> A.
- `Peekable`    An iterator with a peek() that returns an optional reference to the next element.
- `Repeat`  An iterator that repeats an element endlessly.
- `RepeatWith`  An iterator that repeats elements of type A endlessly by applying the provided closure F: FnMut() -> A.
- `Rev` A double-ended iterator with the direction inverted.
- `Scan`    An iterator to maintain state while iterating another iterator.
- `Skip`    An iterator that skips over n elements of iter.
- `SkipWhile`   An iterator that rejects elements while predicate returns true.
- `StepBy`  An iterator for stepping iterators by a custom amount.
- `Successors`  An new iterator where each successive item is computed based on the preceding one.
- `Take`    An iterator that only iterates over the first n iterations of iter.
- `TakeWhile`   An iterator that only accepts elements while predicate returns true.
- `Zip` An iterator that iterates two other iterators simultaneously.

Traits

- `InPlaceIterable` ExperimentalAn iterator that when yielding an item will have taken at least one element from its underlying SourceIter.
- `SourceIter`  ExperimentalThis trait provides transitive access to source-stage in an interator-adapter pipeline under the conditions that
- `Step`    ExperimentalObjects that have a notion of successor and predecessor operations.
- `TrustedLen`  ExperimentalAn iterator that reports an accurate length using size_hint.
- `DoubleEndedIterator` An iterator able to yield elements from both ends.
- `ExactSizeIterator`   An iterator that knows its exact length.
- `Extend`  Extend a collection with the contents of an iterator.
- `FromIterator`    Conversion from an Iterator.
- `FusedIterator`   An iterator that always continues to yield None when exhausted.
- `IntoIterator`    Conversion into an Iterator.
- `Iterator`    An interface for dealing with iterators.
- `Product` Trait to represent types that can be created by multiplying elements of an iterator.
- `Sum` Trait to represent types that can be created by summing up an iterator.

Functions

- `empty`   Creates an iterator that yields nothing.
- `from_fn` Creates a new iterator where each iteration calls the provided closure F: FnMut() -> Option<T>.
- `once`    Creates an iterator that yields an element exactly once.
- `once_with`   Creates an iterator that lazily generates a value exactly once by invoking the provided closure.
- `repeat`  Creates a new iterator that endlessly repeats a single element.
- `repeat_with` Creates a new iterator that repeats elements of type A endlessly by applying the provided closure, the repeater, F: FnMut() -> A.
- `successors`  Creates a new iterator where each successive item is computed based on the preceding one.


## ⚡ std::fs
- The I/O Prelude https://doc.rust-lang.org/stable/std/io/prelude/index.html
- Filesystem manipulation operations https://doc.rust-lang.org/stable/std/fs/index.html

Filesystem manipulation operations.

This module contains basic methods to manipulate the contents of the local filesystem. All methods in this module represent cross-platform filesystem operations. Extra platform-specific functionality can be found in the extension traits of std::os::$platform.

Structs

- `DirBuilder`  A builder used to create directories in various manners.
- `DirEntry`    Entries returned by the ReadDir iterator.
- `File`    A reference to an open file on the filesystem.
- `FileType`    A structure representing a type of file with accessors for each file type. It is returned by Metadata::file_type method.
- `Metadata`    Metadata information about a file.
- `OpenOptions` Options and flags which can be used to configure how a file is opened.
- `Permissions` Representation of the various permissions on a file.
- `ReadDir` Iterator over the entries in a directory.

Examples

```rust,ignore
use std::fs;

fn main() -> std::io::Result<()> {
    for entry in fs::read_dir(".")? {
        let dir = entry?;
        println!("{:?}", dir.path());
    }
    Ok(())
}
```


Functions

- `canonicalize( path )`    返回规范绝对形式路径，所有中间组件都已规范化并解析符号链接。
- `copy( from, to )`    将一个文件的内容复制到另一个文件，并且，此函数还将原始文件的权限位复制到目标文件。
- `create_dir( path )`  Creates a new, empty directory at the provided path
- `create_dir_all( path )`  Recursively create a directory and all of its parent components if they are missing.
- `hard_link(original, link)`   Creates a new hard link on the filesystem.
- `metadata( path )`    Given a path, query the file system to get information about a file, directory, etc.
- `read( path )`    Read the entire contents of a file into a bytes vector.
- `read_dir( path )`    Returns an iterator over the entries within a directory.
- `read_link( path )`   Reads a symbolic link, returning the file that the link points to.
- `read_to_string( path )`  Read the entire contents of a file into a string.
- `remove_dir( path )`  Removes an empty directory.
- `remove_dir_all( path )`  Removes a directory at this path, after removing all its contents. Use carefully!
- `remove_file( path )` Removes a file from the filesystem.
- `rename(from, to)`    Rename a file or directory to a new name, replacing the original file if to already exists.
- `set_permissions( path, perm)`    Changes the permissions found on a file or a directory.
- `soft_link( original, link )` DeprecatedCreates a new symbolic link on the filesystem.
- `symlink_metadata( path )`    Query the metadata about a file without following symlinks.
- `write( path, contents )` Write a slice as the entire contents of a file.

Examples

```rust,ignore
use std::fs;

fn main() -> std::io::Result<()> {
    let path = fs::canonicalize("../a/../foo.txt")?;
    let mut perms = fs::metadata(path)?.permissions();
    perms.set_readonly(true);
    fs::set_permissions(path, perms)?;
    Ok(())
}
```

## ⚡ Range Expressions
- https://doc.rust-lang.org/stable/reference/expressions/range-expr.html
- https://doc.rust-lang.org/stable/std/ops/struct.Range.html

Range expressions

    Syntax
    RangeExpression :
          RangeExpr
       | RangeFromExpr
       | RangeToExpr
       | RangeFullExpr
       | RangeInclusiveExpr
       | RangeToInclusiveExpr

    RangeExpr :
       Expression .. Expression

    RangeFromExpr :
       Expression ..

    RangeToExpr :
       .. Expression

    RangeFullExpr :
       ..

    RangeInclusiveExpr :
       Expression ..= Expression

    RangeToInclusiveExpr :
       ..= Expression

The `..` and `..=` operators will construct an object of one of the `std::ops::Range` (or `core::ops::Range`) variants, according to the following table:

|      Production      |    Syntax   |            Type            |      Range      |
|----------------------|-------------|----------------------------|-----------------|
| RangeExpr            | start..end  | std::ops::Range            | start ≤ x < end |
| RangeFromExpr        | start..     | std::ops::RangeFrom        | start ≤ x       |
| RangeToExpr          | ..end       | std::ops::RangeTo          | x < end         |
| RangeFullExpr        | ..          | std::ops::RangeFull        | -               |
| RangeInclusiveExpr   | start..=end | std::ops::RangeInclusive   | start ≤ x ≤ end |
| RangeToInclusiveExpr | ..=end      | std::ops::RangeToInclusive | x ≤ end         |

Examples:

```rust,ignore
let arr = [0, 1, 2, 3, 4];
assert_eq!(arr[ ..  ], [0, 1, 2, 3, 4]);
assert_eq!(arr[ .. 3], [0, 1, 2      ]);
assert_eq!(arr[ ..=3], [0, 1, 2, 3   ]);
assert_eq!(arr[1..  ], [   1, 2, 3, 4]);
assert_eq!(arr[1.. 3], [   1, 2      ]); // This is a `Range`
assert_eq!(arr[1..=3], [   1, 2, 3   ]);

1..2;   // std::ops::Range
3..;    // std::ops::RangeFrom
..4;    // std::ops::RangeTo
..;     // std::ops::RangeFull
5..=6;  // std::ops::RangeInclusive
..=7;   // std::ops::RangeToInclusive
```
The following expressions are equivalent.



```rust,ignore
let x = std::ops::Range {start: 0, end: 10};
let y = 0..10;

assert_eq!(x, y);
```

Ranges can be used in for loops:

```rust,ignore
for i in 1..11 {
    println!("{}", i);
}
```
