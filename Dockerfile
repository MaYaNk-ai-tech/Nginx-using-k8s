FROM nginx:1.23.3-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY ./conf.d/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
