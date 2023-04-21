FROM nginx:alpine

RUN groupadd -r healthypod && useradd -r -s /bin/false -g healthypod healthypod
COPY nginx/*.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html

EXPOSE 80

USER healthypod

CMD ["nginx", "-g", "daemon off;"]