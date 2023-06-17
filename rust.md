# Rust

# Watching file

1. Installation: `cargo install cargo-watch
2. Run: `cargo watch -x run -x test -x check`
3. And to watch changes in only the src folder and clear the console, set release mode use:
```
cargo watch -c -w src -x 'run -r'
````


# Faster linking

1. Installation: `brew install michaeleisel/zld/zld`
2. Configuration: in `.cargo/config.toml`
```
# .cargo/config.toml
# On Windows
# cargo install -f cargo-binutils
# rustup component add llvm-tools-preview

[target.x86_64-pc-windows-msvc]
rustflags = [ "-C", "link-arg=-fuse-ld=lld-link"]

[target.x86_64-pc-windows-gnu]
rustflags = [ "-C", "link-arg=-fuse-ld=lld"]

# On  Linux
# - Ubuntu `sudo apt install lld clang`
# - Arch  `sudo pacman -S lld clang`
[target.x86_64-unknown-linux-gnu]
rustflags = [ "-C", "linker=clang", "-C", "link-arg=-fuse-ld=lld"]


# On macOS
# - `brew install michaeleisel/zld/zld`
[target.x86_64-apple-darwin]
rustflags = [ "-C", "link-arg=-fuse-ld=/opt/homebrew/bin/zld"]

[target.aarch64-apple-darwin]
rustflags = [ "-C", "link-arg=-fuse-ld=/opt/homebrew/bin/zld"]
```
# Security

1. Installation: `cargo install cargo-audit`
2. Run: `cargo audit`
3. Todo: Investigate: `cargo-deny`

# Formatting

1. Installation: `rustup component add rustfmt`
2. Run: cargo fmt
3. CI/CD: `cargo fmt -- --check`

# Linting

1. Installation: `rustup component add clippy`
2. Run: `cargo clippy`
3. CD/CI: `cargo clippy -- -D warnings` (will fail)

# Lsp for slint-ui
1. `cargo install slint-lsp`
2. `nvim` configuration: [Github](https://github.com/slint-ui/slint/blob/master/editors/README.md)

# Coverage

1. Installation: `cargo install cargo-tarpaulin`
2. Run: `cargo tarpaulin --ignore-test`

# Security

1. Installation: `cargo install cargo-audit`
2. Run: `cargo audit`

# Macros Expansion/Generation

1. Installation: `cargo install cargo-expand`
2. Run: `cargo expand`

# Remove Unused

1. Installation: `cargo install cargo-udeps`
2. Run: `cargo udeps`

Rem: Many need to install nightly compiler (`rustup toolchain install nightly --allow-downgrade`
use `cargo +nightly expand`

# Generate new

1. Installation: `cargo install cargo-generate`
2. Run: `cargo generate <https://github.coom..> --name <my-project>`

# Simple definition of Key Data Stuctures

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

# Threading
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


# GUI `slint-ui`

1.  `slint-viewer`
    a. Installation `cargo install slint-viewer`
    b. Run is from `src` dir and call `slint-viewer ui/main.ui`

2. Example is `cargo-ui`
    a. Installation `cargo install cargo-ui`
    b. running as `cargo-ui`

3. Crate in [github](https://github.com/slit-ui)

# Interesting crates

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


# Examples of UI

[meseun](https://github.com/museun/spotify-mistake)

1. Repaint function with type `Arc<dyn Fn() + Send + Sync + 'static>`
2. User with return value `Fut<Option<User>>`
3. Future
4. use Cow<'a, str>

