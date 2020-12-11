# MongoDB

Official Docker MongoDB Image of [Synaps.is](https://synaps.is)

## Docker Image content

- [MongoDB](https://www.mongodb.com)

## Dockerfile Example

```dockerfile
FROM syis/mongo:4.4.2-bionic

ENV MONGO_DB_1_NAME='db_name'
ENV MONGO_DB_1_USER='db_user'
ENV MONGO_DB_1_PASSWORD='db_password'

ENV MONGO_DB_2_NAME='db_2_name'
ENV MONGO_DB_2_USER='db_2_user'
ENV MONGO_DB_2_PASSWORD='db_2_password'

EXPOSE 27017
```

## Links

- [Docker Hub](https://hub.docker.com/r/syis/mongo)

## Tags

- [4.4.2-bionic](https://github.com/synapsis-official/docker_mongo/tree/4.4.2-bionic)
