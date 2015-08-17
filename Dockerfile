FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y --no-install-recommends nodejs npm

WORKDIR /opt/app
ADD . /opt/app

ENV NODE_ENV docker

RUN npm install --production

EXPOSE 7777

CMD []
ENTRYPOINT ["/usr/bin/nodejs", "server.js"]
