FROM nginx:1.18
EXPOSE 8080
# hadolint ignore=DL3008, DL3015
RUN apt-get -y update && \
    apt-get -y install python3-pip && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt
COPY . /code
WORKDIR /code
ENV LC_ALL=C.UTF-8
RUN lektor build -O _build && \
    cp -a _build/* /usr/share/nginx/html/ && \
    chmod -R a+rwx /var/run && \
    chmod -R a+rwx /var/cache/nginx
USER 1001
CMD ["nginx", "-g", "daemon off;"]
