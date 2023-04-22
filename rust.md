# Rust

# Watching file

1. Installation: `cargo install cargo-watch
2. Run: `cargo watch -x run -x test -x check`
3. And to watch changes in only the src folder and clear the console use: `cargo watch -c -w src -x run`


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

# Formatting

1. Installation: `rustup component add rustfmt`
2. Run: cargo fmt
3. CI/CD: `cargo fmt -- --check`

# Linting

1. Installation: `rustup component add clippy`
2. Run: `cargo clippy`
2. CD/CI: `cargo clippy -- -D warnings`


# Coverage

1. Installation: `cargo install cargo-tarpaulin`
1. Run: `cargo tarpaulin --ignore-test`

