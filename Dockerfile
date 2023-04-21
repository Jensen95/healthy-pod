FROM nginx:alpine

LABEL maintainer="mj.95dk+github-healthy-pod@gmail.com"

RUN addgroup -S healthypod && adduser -S healthypod -G healthypod
COPY nginx/*.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html

EXPOSE 80

USER healthypod

CMD ["nginx", "-g", "daemon off;"]