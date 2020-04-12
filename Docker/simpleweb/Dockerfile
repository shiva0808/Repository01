# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install some depenendencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]


#go into simpleweb directory
#docker build .
#docker run -p 8080:8080 shiva0808/simpleweb
#outside_port:inside_docker_port 
