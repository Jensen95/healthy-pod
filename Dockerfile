FROM nginx:alpine

LABEL maintainer="mj.95dk+github-healthy-pod@gmail.com"

COPY nginx/*.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]