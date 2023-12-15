# Use Python 3.8 to build static website
FROM docker.io/library/python:3.8 as build

# Copy Python requirements
WORKDIR /code
COPY requirements.txt /code/

# Install Python dependencies
RUN pip3 install --no-cache-dir -r /code/requirements.txt

# Copy website assets
COPY . /code

# Build website
ENV LC_ALL=C.UTF-8
RUN lektor build -O _build

# Serve static website with nginx
FROM docker.io/library/nginx:1.25-alpine

# Update packages
RUN apk update && \
    apk upgrade && \
    rm -rf /var/cache/apk/*

# Copy static assets
COPY --from=build /code/_build /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
