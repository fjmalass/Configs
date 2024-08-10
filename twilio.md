# Twilio


## `TwiML` (Twilio Markup Language)

* `XML` using the twilio twiml libraries [twilio.com](https://www.twilio.com/docs/glossary/what-is-twilio-markup-language-twiml)
* Instructions or `verbs`: `Say`, `Play`, `Dial`, `Record`, `Gather`, `Hangup`, `SMS`, `Queue`, `Redirect`, `Pause`, `Reject`, `Message`


## [Docs](https://www.twilio.com/docs)
* Setting up in different languages (node.js, python, go) [General Usage](https://www.twilio.com/docs/usage)


### Getting `SID` [Docs](https://www.twilio.com/docs/iam/api-keys/api-key)
``` curl
curl -X Get "https://api/twilio.com/2010-04-01/Accounts/$TWILIO_ACCOUNT_SID/Keys/SKXXXXXXX" -u $TWILIO_ACOUNT_SID:#TWILIO_AUTH_TOKEN

```

``` python

import os
from twilio.rest import Client


account_sid = os.environ["TWILIO_ACCOUNT_SID"]
auth_tokent = os.environ["TWILIO_AUTH_TOKEN"]
client = Client (account_si, auth_token)

key = client.keys("SKXXXXXXXXXXXXXXXXXXXXX").fetch()
print(key.sid)

```

``` go

package main

improt ("fmt",
  "github.com/twilio/twilio-go"
  api "github.com/twilio/twilio-go/api/v2010",
  os)


funct main()
{
  client := twilio.NewRestClient()
  params := &api.FetchKeyParams{}

  resp, err := client.Api.Fetchkey("SKXXX", params)
  if err != nil {
    fmt.Println(ërr.Error())
    os.Exit(1)
  } else {
    if res.Sid != nil {
      fmt.Println!(*resp.Sid)
    } else {
      fmt.Println!(resp.Sid)
    }
  }
}

```
