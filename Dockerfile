# syis/mongo:tagname

FROM mongo:4.4.2-bionic

MAINTAINER fabrizio@fubelli.org

RUN mkdir -p /usr/local/share/mongo

COPY init-mongo.js /usr/local/share/mongo/init.js
COPY start-mongo.sh /usr/local/bin/start-mongo

ENV MONGO_DB_1_NAME='synapsis_db'
ENV MONGO_DB_1_USER='synapsis_user'
ENV MONGO_DB_1_PASSWORD='synapsis_password'

ENV MONGO_DB_2_NAME='synapsis_2_db'
ENV MONGO_DB_2_USER='synapsis_2_user'
ENV MONGO_DB_2_PASSWORD='synapsis_2_password'

EXPOSE 27017

CMD start-mongo
