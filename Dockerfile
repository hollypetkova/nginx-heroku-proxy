FROM nginx:1.19-alpine
COPY proxy.sh /proxy.sh
COPY nginx.conf /etc/nginx/nginx.conf.template
RUN chmod +x /proxy.sh
CMD /proxy.sh
