# MongoDB

Official Docker MongoDB Image of [Synapsis](https://syis.eu)

## Docker Image content

- [MongoDB](https://www.mongodb.com)

## Dockerfile Example

```dockerfile
FROM syis/mongo:4.4.2-bionic

# An initialization script creates the needed
# databases by reading the environments named:
# - MONGO_DB_x_NAME
# - MONGO_DB_x_USER
# - MONGO_DB_x_PASSWORD
# (where x is an incremental integer)
# The script cycle over the numbers (by starting from 1),
# until it NOT find a variable named MONGO_DB_i_NAME

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
