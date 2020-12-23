#!/bin/bash

if [ ! -d cert ]; then
  mkdir cert
fi

openssl genrsa -out cert/ca.key 2048
openssl req -new -key cert/ca.key -out cert/ca.csr
openssl x509 -req -days 3650 -extensions v3_ca -set_serial 1 -in cert/ca.csr -signkey cert/ca.key -out cert/ca.crt

