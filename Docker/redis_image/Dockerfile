# Use existing base image
FROM alpine


# install dependency for base image
RUN apk add --update redis


# tell the image startup command or what to do at startup
CMD["redis-server"]


#Execute below command to create image in this directory
#docker build .
