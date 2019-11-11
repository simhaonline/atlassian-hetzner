#!/bin/bash
 
if [[ ! -f /var/www/certbot ]]; then
   mkdir -p /var/www/certbot
fi

sleep 1s 
certbot certonly \
--config-dir /etc/letsencrypt \
--agree-tos \
--domains "$DOMAIN" \
--email "$EMAIL" \
--expand \
--noninteractive \
--webroot \
--webroot-path /var/www/certbot

if [[ -f "/etc/letsencrypt/live/${DOMAIN}/fullchain.pem" ]]; then
  ln -s "/etc/letsencrypt/live/${DOMAIN}/fullchain.pem" /etc/nginx/fullchain.pem
fi

if [[ -f "/etc/letsencrypt/live/${DOMAIN}/privkey.pem" ]]; then
  ln -s "/etc/letsencrypt/live/${DOMAIN}/privkey.pem" /etc/nginx/privkey.pem
fi

if [[ ! -f /etc/nginx/conf.d/atlas.conf ]]; then
  sed "s/\${DOMAIN}/${DOMAIN}/g" /opt/atlas.conf.template > /etc/nginx/conf.d/atlas.conf
fi

nginx -s reload
