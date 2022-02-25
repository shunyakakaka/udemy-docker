FROM nginx:latest
COPY ./copy-lecture/default.conf /etc/nginx/conf.d/default.conf
