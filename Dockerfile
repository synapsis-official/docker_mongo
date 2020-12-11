# syis/mongo:tagname

FROM mongo:4.4.2-bionic

MAINTAINER fabrizio@fubelli.org

RUN mkdir -p /usr/local/share/mongo

COPY init-mongo.js /usr/local/share/mongo/init.js
COPY start-mongo.sh /usr/local/bin/start-mongo

EXPOSE 27017

CMD start-mongo
