FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to copy both package and package-lock.json
COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production
RUN npm install

# Bundle app source
COPY . .

# port to be mapped by the docker daemon
EXPOSE 8080

# Command to run the app
CMD [ "npm","start" ]



