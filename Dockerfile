# pull the official base image
FROM node:latest

# set working direction
WORKDIR /app

# Install application dependencies
COPY package*.json ./

RUN npm ci --only=production

# Bundle app source
COPY . .

# Start app
CMD [ "node", "index.js" ]