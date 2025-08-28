FROM node:18
WORKDIR /app

COPY .npmrc ./
COPY server.js .

# Disable strict SSL
RUN npm config set strict-ssl false

# NPM Install
RUN npm install express cors

CMD ["node", "server.js"]