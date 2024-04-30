# Accept a parameter during build
ARG ENVIRONMENT

FROM nginx:mainline-alpine3.18-perl

# Copy config files based on the value of ENVIRONMENT parameter
COPY nginx-${ENVIRONMENT}.conf /etc/nginx/nginx.conf

# HTTP
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
