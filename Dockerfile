FROM alpine:latest

RUN apk add nodejs --no-cache nodejs-npm

MAINTAINER srikanth

RUN npm install -g http-server

COPY . /src

WORKDIR /src

ENTRYPOINT ["http-server"]

EXPOSE 9000
