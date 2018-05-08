FROM nginx:1.13
EXPOSE 8080
ADD index.html /usr/share/nginx/html/
ADD nginx.conf /etc/nginx/conf.d/default.conf
RUN chmod -R a+rwx /var/run
RUN chmod -R a+rwx /var/cache/nginx
USER 1001
CMD ["nginx", "-g", "daemon off;"]
