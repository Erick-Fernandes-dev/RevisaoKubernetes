#!/bin/bash

openssl req -nodes \
    -days 365 \
    -newkey rsa:2048 \
    -keyout estagiario.key \
    -out estagiario.csr \
    -subj "/CN=estagiario/O=erick/" \
    -addext "subjectAltName=DNS:estagiario.erick.com.br" 