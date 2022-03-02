# pull the official base image
FROM node:latest
ENV NODE_ENV=production

# set working direction
WORKDIR /app

# Install application dependencies
COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

# Start app
CMD [ "npm", "start" ]