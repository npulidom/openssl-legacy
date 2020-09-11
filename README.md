OpenSSL
=======

OpenSSL legacy version running on Alpine Linux. Uncompressed size: 13 MB.

**OpenSSL** `v1.0.2t`


## Usage

Run as deamon
```bash
docker run --name openssl -d npulidom/openssl-legacy /bin/sh -c "while true; do ping 8.8.8.8; done"
```

Run bash shell in container
```bash
docker exec -it openssl /bin/bash
```
Generate certificate
```bash
# key
openssl genrsa -out file.key 2048

# csr
openssl req -new -key file.key -out file.csr

# cert
openssl x509 -req -days 2920 -in file.csr -signkey file.key -out file.crt

# copy key and certs
cat file.key file.csr file.crt
```
