FROM bitnami/nginx:1.21.5

LABEL maintainer="fisher"

ENV BASE_URL ""

COPY nginx.conf /opt/bitnami/nginx/conf/nginx.conf
WORKDIR /app

COPY ./index.html .
COPY ./dist/oauth2-redirect.html .
COPY ./dist/* ./dist/
COPY ./docker-run.sh .


RUN /app/docker-run.sh

EXPOSE 8080

