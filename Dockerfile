FROM node:12.18.3-alpine

WORKDIR /usr/app
COPY ./ /usr/app
RUN apk add python3
RUN apk add curl-dev
RUN apk add g++
RUN apk add make
RUN npm config set user root
RUN npm i -g insomnia-inso

ENTRYPOINT [ "inso" ]
