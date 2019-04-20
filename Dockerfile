FROM node:latest
ADD . /app/
WORKDIR /app
RUN npm config set registry https://registry.npm.taobao.org && npm install
EXPOSE 3001
CMD [ "npm", "start" ]