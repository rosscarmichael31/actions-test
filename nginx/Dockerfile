FROM nginx:mainline-alpine3.18-perl

ARG env
# Copy config files based on the value of ENVIRONMENT parameter
COPY nginx/nginx-$env.conf /etc/nginx/nginx.conf

# HTTP
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
