FROM nginx:1.19-alpine
COPY nginx.conf /etc/nginx/nginx.conf
#ADD proxy.sh /proxy.sh
#RUN chmod +x /proxy.sh
#CMD /proxy.sh
