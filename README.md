# Boilerplate Docker for Node Elastic Mongo

Quick start of docker container for Node.js, Mongodb, Elasticsearch using docker-compose.

Update the mongo user and password in mongo/user.sh and replace the XxX by an user and a password.

Command: # docker-compose up --build.

If you are running Docker on linux and you get a memory error run : #  sysctl -w vm.max_map_count=262144