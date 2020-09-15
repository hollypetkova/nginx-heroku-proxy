FROM nginx:1.19-alpine
COPY nginx.conf /etc/nginx/nginx.conf.template
CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf" && nginx -g 'daemon off;'
#ADD proxy.sh /proxy.sh
#RUN chmod +x /proxy.sh
#CMD /proxy.sh
