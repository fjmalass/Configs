# https

## Generation of certificates for a server

1. Use `openssl`
2. Generate a private key (`server.key`): `openssl genrsa -out server.key 2048`
3. Generate a Certificate Signing Request (`server.csr`): `openssl req -new -key server.key -out server.csr`
  - Use Common Name: `localhost` or `rhypt.com`
4. [Only for 1 https] Generate Self-Signed certificate (`server.crt`): `openssl X509 -req -days 365 -in server.csr -signkey certificate.key -out server.crt`)
5. [For multiple https] Use CA signed certificate: `open x509 -req -in server.csr -CA ca.crt -CAkey ca.key  -CAcreateserial -out server.crt -days 365 -sha256`

## Generation of Self Managed Certificate Authority
1. Generate a private key (`ca.key`): `openssl genrsa -out ca.key 4096`
2. Create a CA Certificate (`ca.crt`): `openssl req -x509 -new -nodes -key ca.key -sha256 -days 356 -out ca.crt`


## Verification
 openssl verify -CAfile ca.crt server.crt


## Trusted Certificate Authority

- [Let's encrypt](https://letsencrypt.org): Open Source
- [DigiCert](https://www.digicert.com)
