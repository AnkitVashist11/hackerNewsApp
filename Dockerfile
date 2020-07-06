FROM node:10
RUN mkdir -p /usr/src/app
WORKDIR /usr/scr/app
COPY package.json /usr/src/app
COPY package-lock.json /usr/src/app
RUN npm cache clean
RUN npm ci production
COPY . /usr/src/app
EXPOSE 8080
CMD ["npm", "start"]
