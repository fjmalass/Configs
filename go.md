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

- Install `choco install go` (update: `choco upgrade all`)

## Check Version

- `go version`:  Should be `>1.17.2`

## Run

- `go run <file>.go`
- `go run .`

## Write program

### Enable dependencies

`go mod init <website>/<program>[/v3]`
Creates a `go.mod` configuration file

### Packages

Location: `pkg.go.dev`

### Test

- `go test`
- `go test -v`
- `go test -cover`
- `go test -coverprofile=coverage.out && go tool cover -html=coverage.out`


### Traces/Flight recorder (Go 1.25)

- Circular buffer


## Accessing private github repos  [See](git.md$##git-and-ability-to-download-private-repo-with-go)

- Create a git token and make sure that it has
- `git config --global url."https://<user>:<gh_token>@github.com/".insteadOf "https://github.com/"`
  for OperativeGames I have been using `francois-grumpy` for `<user>`

## References

- [Let's Go Further](https://lets-go-further.alexedwards.net)
- [100 Go Mistakes and How to Avoid Them](https://100go.co)
- [Lear Go With Tests](https://quii.gitbook.io/learn-go-with-tests)

