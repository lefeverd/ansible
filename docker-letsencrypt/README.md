# Docker-letsencrypt

This role runs the needed docker containers to be able to use letsencrypt.  
It uses the jwilder/docker-gen image to create the nginx configuration for each container,
and the default nginx image to serve as a proxy.  
The jrcs/letsencrypt-nginx-proxy-companion image then generates the certificates.

You need to define the following environment variables:
- VIRTUAL_HOST
- LETSENCRYPT_HOST

For instance:

    docker run -d \
    --name example-app \
    -e "VIRTUAL_HOST=example.com,www.example.com,mail.example.com" \
    -e "LETSENCRYPT_HOST=example.com,www.example.com,mail.example.com" \
    -e "LETSENCRYPT_EMAIL=foo@bar.com" \
    tutum/apache-php

## Required variables

No variables are required.  
See defaults/main.yml for the variables used in the role.

## Documentation

[https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion)
