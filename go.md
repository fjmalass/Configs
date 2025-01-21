# Go Version

`https://golang.org/dl/`

## Installation

### On `MacOS` with M1

use `darwin amdv8`

### On `ubuntu`

Install from scratch
`https://golang.org/do/install`
`rm -rf /usr/local/go && tar -C /usr/local -xzf go.1.xxx.linux-amd64.tar.gz`

in `.profile` / `.zshrc`
add `export PATH=$PATH/usr/local/go/bin`

### On Windows

* Install `choco install go` (update: `choco upgrade all`)


## Check Version

`go version`
Should be `>1.17.2`

## Run

`go run <file>.go`
also
`go run .`

## Write program

### Enable dependencies

`go mod init <website>/<program>[/v3]`
Creates a `go.mod` configuration file

### Packages

Location: `pkg.go.dev`
