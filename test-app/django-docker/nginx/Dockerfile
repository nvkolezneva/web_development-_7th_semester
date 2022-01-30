# Stage 2 - nginx & frontend dist
FROM nginx:alpine

COPY nginx/prod.conf /etc/nginx/nginx.conf
COPY nginx/favicon/* /var/www/favicon/

CMD ["nginx", "-g", "daemon off;"]