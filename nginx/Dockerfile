FROM nginx:mainline-alpine3.18-perl

ARG env

COPY nginx/nginx-$env.conf /etc/nginx/nginx.conf

# HTTP
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
