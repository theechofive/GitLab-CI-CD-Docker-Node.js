FROM node:14-alpine3.16

WORKDIR /app

COPY . /app

CMD [ "yarn", "start:prod" ]
