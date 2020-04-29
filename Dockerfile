FROM node:12.16.2-stretch-slim
RUN mkdir -p ~/app
WORKDIR /app
COPY package*.json /app/
RUN npm install npm@latest -g &&  npm install --global gulp-cli && echo n | npm install -g --silent @angular/cli@8.3.26  &&   rm package*.json -f  && npm list -g && ls

