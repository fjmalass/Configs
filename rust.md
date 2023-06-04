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


# Coverage

1. Installation: `cargo install cargo-tarpaulin`
2. Run: `cargo tarpaulin --ignore-test`

# Security

1. Installation: `cargo install cargo-audit`
2. Run: `cargo audit`

#  Macros Expansion/Generation

1. Installation: `cargo install cargo-expand`
2. Run: `cargo expand`

Rem: Many need to install nightly compiler (`rustup toolchain install nightly --allow-downgrade`
use `cargo +nightly expand`



# GUI `slint-ui`

1.  using sling with `slint-viewer`
2.  k

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


