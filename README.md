# elk-openssl
openssl script for ELK-Stack



## usage
you can create Root CA Certificate like below.
```
chmod 755 ./create_ca.sh
./create_ca.sh
```

then, you can find the Root CA Certificate in 'cert' folder.

and you can create each node Self-Signed Certificate using ca that you created.
```
chmod 755 ./create_cert.sh
./create_cert.sh <CERTIFICATE NAME>
```

you can use this for implements secure connection in ELK stack and etc (like Filebeat, Metricbeat)

🔑 important, when use create_cert.sh, you have to input your DNS to (CN, FQRN) accuratly.
also, this script use same Root CA. if Root CA Certificate diffrent when the servers communicate each server, you will got "bad_certificate" error log.
