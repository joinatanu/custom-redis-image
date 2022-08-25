# Use an existing docker image an a base image
FROM alpine


# Download and install dependency for the custom base image I am building
RUN apk add --update gcc
RUN apk add --update redis
#Commands for Mannual Image generation using shell script
#docker commit -c 'CMD["redis-server"]' <id of the running container>


# Tell the image what to do when it starts as a container
CMD [ "redis-server" ]