# pull the official base image
FROM node:latest

# set working direction
WORKDIR /node-demo

# Install application dependencies
COPY package*.json ./

RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
# Start app
CMD [ "node", "index.js" ]