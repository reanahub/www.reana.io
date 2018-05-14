FROM nginx:1.13
EXPOSE 8080
RUN apt-get -y update && \
    apt-get -y install python3-pip && \
    apt-get -y autoremove && \
    apt-get -y clean
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /code
WORKDIR /code
RUN pip3 install -r requirements.txt
ENV LC_ALL=C.UTF-8
RUN lektor build -O _build && \
    cp -a _build/* /usr/share/nginx/html/ && \
    chmod -R a+rwx /var/run && \
    chmod -R a+rwx /var/cache/nginx
USER 1001
CMD ["nginx", "-g", "daemon off;"]
