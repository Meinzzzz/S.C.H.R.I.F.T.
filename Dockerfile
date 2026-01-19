# Based on Node.js on Alpine3.23
FROM node:lts-alpine3.23
WORKDIR /usr/src/app

# copy package.json and package-lock.json and install packages.
COPY package*.json ./
RUN npm install

# copy the app
COPY . .

# expose port 3000 and start the app
EXPOSE 5173
CMD [ "npm", "start" ]