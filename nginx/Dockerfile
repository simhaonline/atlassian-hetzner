FROM nginx:latest

RUN apt-get update && apt-get install -y certbot
RUN mkdir -p /var/www/certbot
COPY default.conf /etc/nginx/conf.d/default.conf
COPY certificate.sh /opt/certificate.sh
COPY entrypoint.sh /opt/entrypoint.sh
COPY atlas.conf.template /opt/atlas.conf.template
ENTRYPOINT ["/opt/entrypoint.sh"]
