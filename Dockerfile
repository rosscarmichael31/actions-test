FROM nginx:mainline-alpine3.18-perl

# Copy config files
COPY ../nginx/nginx.conf /etc/nginx/nginx.conf
COPY ../nginx/proxy.conf /etc/nginx/proxy.conf

# HTTP
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
