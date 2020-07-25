# Nginx playground

## Setup
Create self-signed certificate
```sh
mkdir -p ssl
openssl genrsa 4096 > ssl/server.key
openssl req -new -key ssl/server.key > ssl/server.csr
openssl x509 -days 365 -req -signkey ssl/server.key < ssl/server.csr > ssl/server.crt
```

## Run
```sh
docker-compose up --build
```
then access `https://localhost`
```sh
curl --insecure https://localhost
```
