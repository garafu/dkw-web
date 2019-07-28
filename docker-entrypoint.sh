#! /bin/sh

envsubst '$$APPLICATION_HOST' \
  < /home/nginx/nginx.conf \
  > /etc/nginx/nginx.conf

# envsubst '$$APPLICATION_HOST' \
#   < /home/nginx/conf.d/default.conf \
#   > /etc/nginx/conf.d/default.conf

exec "$@"
