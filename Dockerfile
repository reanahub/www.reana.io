FROM nginx:1.13
ADD index.html /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
