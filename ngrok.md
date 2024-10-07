# Create an ngrok reverse proxy

## Ngrok account

1. Have an ngrok account  [dashboard](https://dashboard.ngrok.com/signup)

* current having `francois@concurrents.com` and `fmalassenet@grumpypixel.com`

## Windows

### Install

1. Install on your machine: `choco install ngrok`
2. Add the authentication in `ngrok.yml`  (in `<User>/Appdata/Local/ngrok/ngrok.yml`)

``` bash
ngrok config add-authtoken <Token>
```

### Launch

Launch the ngrok service `ngrok http 8000`
