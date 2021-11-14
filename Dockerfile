FROM node:16-alpine
RUN apk --no-cache add git

WORKDIR /app
RUN git clone --branch v2.17.1 https://github.com/MichMich/MagicMirror
WORKDIR /app/MagicMirror

RUN npm install

RUN cp config/config.js.sample config/config.js

EXPOSE 8080

CMD ["npm","run","server"]