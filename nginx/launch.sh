#!/bin/sh

envsubst < nginx.conf > /etc/nginx/nginx.conf
envsubst < auth.htpasswd > /etc/nginx/.htpasswd

htpasswd -c -b /etc/nginx/.htpasswd $USERNAME $PASSWORD

echo basic-auth-pwd
cat /etc/nginx/auth.htpasswd

nginx -g "daemon off;"