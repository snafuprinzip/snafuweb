FROM nginx:latest

COPY html /usr/share/nginx/html
RUN touch /var/run/nginx.pid && \
    chown -R www-data:www-data /var/run/nginx.pid /var/cache/nginx /usr/share/nginx/html && \
#    chmod a+rw /var/run/nginx.pid && \
#    chmod -R a+rwX /var/cache/nginx /usr/share/nginx/html && \
    sed -i s/80/8000/g /etc/nginx/conf.d/default.conf && \
    echo "configuration completed"

USER www-data

EXPOSE 8000
