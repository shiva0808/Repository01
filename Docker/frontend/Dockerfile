##########################this is builder process######
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
##########################This is deployment process#############
FROM ngnix
EXPOSE 80         #this is for EBS port mapping with NGINX
COPY --from=builder /app/build /usr/share/nginx/html
