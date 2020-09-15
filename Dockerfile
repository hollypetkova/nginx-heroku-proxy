FROM nginx:1.19-alpine
COPY nginx.conf /etc/nginx/nginx.conf.template
CMD /bin/sh -c "envsubst '\$PORT \$PROXY_HOST' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf" && nginx -g 'daemon off;'
