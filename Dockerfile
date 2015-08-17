FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nodejs

WORKDIR /opt/app
ADD . /opt/app

ENV NODE_ENV docker

RUN npm install --production

EXPOSE 7777

ENTRYPOINT ["node"]

CMD ["server.js"]
