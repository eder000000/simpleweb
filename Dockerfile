#Specify a base image
FROM node:alpine

#Working directory
WORKDIR /usr/app

#Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default command
CMD ["npm", "start"]