FROM nginx:mainline-alpine3.18-perl

# Copy config files
COPY ../nginx/nginx.conf /etc/nginx/nginx.conf

# HTTP
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
