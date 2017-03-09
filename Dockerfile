FROM nginx:latest

COPY html /usr/share/nginx/html
RUN sed s/0.0.0.0:80/0.0.0.0:8000/g /etc/nginx/nginx.conf && \
    chmod -R a+rwX /var/cache/nginx /usr/share/nginx/html

EXPOSE 8000

