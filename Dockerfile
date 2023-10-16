FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm audit fix --force
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "app.js"]
