FROM docker.io/library/ubuntu:latest

USER 0

RUN apt-get update && apt-get -y install curl apt-utils software-properties-common apt-transport-https && \
    add-apt-repository -y ppa:ondrej/nginx-mainline && \
    apt-get -y install nginx python3 certbot python3-certbot-dns-cloudflare python3-certbot-dns-route53 && apt-get -y --autoremove full-upgrade

SHELL [ "/bin/bash", "-o", "pipefail", "-c" ]

RUN mkdir -p /opt/nginx/logs.d && mkdir -p /opt/nginx/conf.d && mkdir -p /opt/nginx/content.d && mkdir -p /opt/nginx/cert.d && \
    cp -av /etc/nginx/* /opt/nginx/conf.d/ && cp -a /var/www/html/* /opt/nginx/content.d/ && \ 
    chown -R www-data:www-data /opt/nginx && chown -R www-data:www-data /var/lib/nginx

USER www-data

COPY --chown=www-data:www-data nginx.conf /opt/nginx/conf.d/
COPY --chown=www-data:www-data cloudflare.ini /opt/nginx/
COPY --chown=www-data:www-data site /opt/nginx/content.d/

RUN chmod 400 /opt/nginx/cloudflare.ini && \
    certbot certonly --agree-tos --email jeong.sid@sidlibrary.org --non-interactive --config-dir /opt/nginx/cert.d/ --work-dir /opt/nginx/cert.d/ --logs-dir /opt/nginx/cert.d/ --dns-cloudflare --dns-cloudflare-credentials /opt/nginx/cloudflare.ini -d "*.sidlibrary.org"

RUN /usr/sbin/nginx -c "/opt/nginx/conf.d/nginx.conf" -t

EXPOSE 80 443

STOPSIGNAL SIGQUIT

ENTRYPOINT [ "/usr/sbin/nginx", "-c", "/opt/nginx/conf.d/nginx.conf", "-g", "daemon off;" ]