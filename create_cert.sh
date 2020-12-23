#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./create_node.sh <name>"
    exit 1
fi

openssl genrsa -out cert/$1.key 2048
openssl pkcs8 -in cert/$1.key -topk8 -out cert/$1.p8 -nocrypt
openssl req -new -key cert/$1.key -out cert/$1.csr
openssl x509 -req -days 1825 -extensions v3_user -in cert/$1.csr -CA cert/ca.crt -CAcreateserial -CAkey cert/ca.key -out cert/$1.crt 