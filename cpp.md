# CPP

## `llvm` installed from `brew`

To use the bundled `libc++` please add the following `LDFLAGS`:

```zsh
LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"`

```

llvm is keg-only, which means it was not symlinked into /opt/homebrew,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have llvm first in your PATH, run:

```zsh
  echo 'export PATH="/opt/homebrew/opt/llvm/bin:$PATH"' >> ~/.zshrc

```

For compilers to find llvm you may need to set:

```zsh
  export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
```

## C++ Libraries and others

[awesome-cpp](https://github.com/fffaraz/awesome-cpp/blob/master/README.md#cli)

## CMake

- [CMake Tutorial](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
- Also check the packt book

## CLI

- use [argumentum](https://github.com.mmahnic/argumentum)
- use [cli11](https://github.com/CLIUtils/CLI11?tab=readme-ov-file)

## Use [Valgrind](http://valgrind.org)

Profiler/Memory management/tracking
