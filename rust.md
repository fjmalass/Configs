# Rust

## Watching file

1. Installation: `cargo install cargo-watch
2. Run: `cargo watch -x run -x test -x check`
3. And to watch changes in only the src folder and clear the console, set release mode use:

```bash
cargo watch -c -w src -x 'run -r'
````

## Testing with output

`cargo test -- --show-output`

## Faster linking

1. Installation: `brew install michaeleisel/zld/zld`
2. Configuration: in `.cargo/config.toml`
```toml
## .cargo/config.toml
## On Windows
## cargo install -f cargo-binutils
## rustup component add llvm-tools-preview

[target.x86_64-pc-windows-msvc]
rustflags = [ "-C", "link-arg=-fuse-ld=lld-link"]

[target.x86_64-pc-windows-gnu]
rustflags = [ "-C", "link-arg=-fuse-ld=lld"]

## On  Linux
## - Ubuntu `sudo apt install lld clang`
## - Arch  `sudo pacman -S lld clang`
[target.x86_64-unknown-linux-gnu]
rustflags = [ "-C", "linker=clang", "-C", "link-arg=-fuse-ld=lld"]


## On macOS
## - `brew install michaeleisel/zld/zld`
[target.x86_64-apple-darwin]
rustflags = [ "-C", "link-arg=-fuse-ld=/opt/homebrew/bin/zld"]

[target.aarch64-apple-darwin]
rustflags = [ "-C", "link-arg=-fuse-ld=/opt/homebrew/bin/zld"]
```

Rem: May need to install nightly compiler (`rustup toolchain install nightly --allow-downgrade`
use `cargo +nightly expand`

## Security

1. Installation: `cargo install cargo-audit`
2. Run: `cargo audit`
3. Todo: Investigate: `cargo-deny`

## Formatting

1. Installation: `rustup component add rustfmt`
2. Run: cargo fmt
3. CI/CD: `cargo fmt -- --check`

## Linting

1. Installation: `rustup component add clippy`
2. Run: `cargo clippy`
3. CD/CI: `cargo clippy -- -D warnings` (will fail)

## Lsp for slint-ui

1. `cargo install slint-lsp`
2. `nvim` configuration: [Github](https://github.com/slint-ui/slint/blob/master/editors/README.md)

## Coverage

1. Installation: `cargo install cargo-tarpaulin`
2. Run: `cargo tarpaulin --ignore-test`

## Security

1. Installation: `cargo install cargo-audit`
2. Run: `cargo audit`

## Full audit - `deny`

1. Installation: `cargo install cargo-deny`
2. Initialization project: `cargo deny init`
3. Run: `cargo deny check`

## Macros Expansion/Generation

1. Installation: `cargo install cargo-expand`
2. Run: `cargo expand | more`

## Remove Unused

1. Installation: `cargo install cargo-udeps`
2. Run: `cargo udeps`

## Docker and caching builds `cargo chef`

1. Installation: `cargo install cargo-chef` check website for docker setup

## Create a new crate based on a template: `cargo generate --git <html.git>`

1. Installation `cargo install cargo-generate`
2. Run: `cargo generate --git https://github.com/<git_repo.git>`


## Tracking when `panic`

1. `RUST_TRACEBACK=1 cargo run`

## Benchmark with `criterion`

1. Installation `cargo install cargo-criterion`
    a. Make sure to have `gnuplot` installed for html files, e.g., `brew install gnuplot`
    b. Have the proper `criterion.toml` in the `project` directory
2. Running `cargo criterion`
    a. Create file `benches\my_bench.rs`, and update `
    b. Check the `html` file in `target\criterion\reports\index.html`



## Recover from errors

1. With `match`

```rust
use std::fs::File;
use std::io::ErrorKind;

fn main() {
    let greeting_file_result = File::open("hello.txt");

    let greeting_file = match greeting_file_result {
        Ok(file) => file,
        Err(error) => match error.kind() {
            ErrorKind::NotFound => match File::create("hello.txt") {
                Ok(fc) => fc,
                Err(e) => panic!("Problem creating the file: {:?}", e),
            },
            other_error => {
                panic!("Problem opening the file: {:?}", other_error);
            }
        },
    };
}
```
2 . without `match`
```rust
let greeting_file = File::open("hello.txt").unwrap_or_else(|error| {
        if error.kind() == ErrorKind::NotFound {
            File::create("hello.txt").unwrap_or_else(|error| {
                panic!("Problem creating the file: {:?}", error);
            })
        } else {
            panic!("Problem opening the file: {:?}", error);
        }
    });
```


#

## Generate new

1. Installation: `cargo install cargo-generate`
2. Run: `cargo generate <https://github.coom..> --name <my-project>`


## Using environment variables

```rust
   let ignore_case = env::var("IGNORE_CASE").is_ok();
```
use `IGNORE_CASE=1 cargo run`



## Simple definition of Key Data Stuctures

## `Box<T>` - _unsafe thread_

1. Allocate new instance on the heap
2. Borrow check verified at compile time

## `Rc<T>` - `Arc<T>`  - _unsafe/safe thread_

1. Sharing ownership by reference counting.
2. Similar to a `Box` with cloning will not allocate new data, just update a stored counter.
3. `Rc` is not thread safe as the reference count can be updated at the same time. - does not have the `Send` trait
4. `Arc` is thread safe - It has the `Send` (used in move) trait

## `RefCell<T>` - `Cell<T>` - _unsafe thread_

0. Also known as __interior mutability__
1. Borow check verified at RUNTIME (if problem will panic)
2. Provide the **mutable** vs **immutable** borrowing
3. `Cell` needs `Copy` trait, using `take()`
4. `RefCell` uses references, using `borrow_mut()`

## `Mutex<T>` - `RwLock<T>` - _safe thread_

1. Prevent data races when updating instance between threads
2. `RwLock<T>` allows multiple reads but a single write and thus is more expensive

## `Atomic` - _safe thread_

1. Version of `Cell` but limited to U32 or small types `<T>`
2. Tool for making sharing between threads possible

## `UnsafeCell` - _no restrictions_

## Threading

1. `Send` Trait allows to move ownership to another thread, _e.g._, `Arc`, `Cell`, primitives like `i32`, `f64`
2. `Sync` Trait allows to shared with another thread, _e.g._, primitives like `i32`, `f64` (but `Cell` is not)
3. If a structure has all its fields with `Send` or `Sync`traits,  the structure  will also have the corresponding traits
(To avoid use `std::marker::PhantomData<T>` with `T` not having the trait that is not supposed to be propagated to the structure. e.g.
```
struct X {
    handle: i32,
    _not_sync_: std::marker::PhantomData<Cell<()>>,
}
```

`X` will have `Send` trait but not `Sync`.


## GUI `slint-ui`

1.  `slint-viewer`
    a. Installation `cargo install slint-viewer`
    b. Run is from `src` dir and call `slint-viewer ui/main.ui`

2. Example is `cargo-ui`
    a. Installation `cargo install cargo-ui`
    b. running as `cargo-ui`

3. Crate in [github](https://github.com/slit-ui)

## Interesting crates

1. Cow (Copy-On-Write) see blog
2. anyhow.workspace = true
3. async-trait.workspace = true
4. chrono.workspace = true
5. clap = { version = "4.2.4", features = ["derive"] }
6. crossterm = "0.25"
7. directories = "5.0.0"
8. log.workspace = true
9. simplelog = "0.12.1"
10. textwrap = "0.16.0"
11. thiserror = "1.0.40"
12. toml = "0.7.3"
13. tui = "0.19.0"
14. tui-textarea = "0.2.0"
15. actix-web
16. tokio = {version = "2",  features

## Examples of UI

[meseun](https://github.com/museun/spotify-mistake)

1. Repaint function with type `Arc<dyn Fn() + Send + Sync + 'static>`
2. User with return value `Fut<Option<User>>`
3. Future
4. use `Cow<'a, str>`

## Borrow checking and `UnsafeCell`

- [ralfj](https://www.ralfj.de/blog/)

## Example of SIMD

- [frizbee](https://github.com/saghen/frizbee)

## Practices

[any patterns to avoid](https://www.youtube.com/watch?v=SWwTD2neodE)

### Error Handling (2024-12-30)

  ```rust
  #![deny(clippy::unwrap_used)]
  #![deny(clippy::expect_used)]
  #![deny(clippy::panice)]
  #!deny(clippy::unused_must_use)]```

### Important Std Traits

`From`, `TryFrom`, `FromStr`

### Limit cloning

- Avoid clone inside constructor (specify if ownership is taken over when using the call)
- In Multithreaded environment when threads use the same data
   - For read only: use `Arc::clone(config)`
   - For read/write : use `Arc::clone(RwLock::new(config))`

### Use pattern matching

Examples:

1. All cases
```rust
match user {
    Some(User{name}) if name.is_empty() => println!("No Name"),
    Some(User{name}) => println!("Name: {}", name),
    None => println!("No User"),
}
```

2. if -> True

```rust
match status {
    Status::Active | Status::Pending => true,
    _ => false,
}
```

or use macro
```rust
    match!(status, Status::Active | Status::Pending)
```

3. Pulling the first element of an array

```rust
if let [first, ..] = list {
```

### Avoid global (wildcard) import

Except with `std::prelude::*`, Test `super::*`, Resport all elements in a crate library


## HTTP (2012-09-27) [Comparison](https://www.youtube.com/watch?v=SR2LRhnL1AQ)

1. `Actix`
1. `Axum`
3. `Rocket`
