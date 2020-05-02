FROM node:12
WORKDIR /usr/src/app
COPY package*.json /usr/src/app
RUN ls /usr/src/app  && cat package.json && cat package-lock.json && npm install npm@latest -g &&  npm install --global gulp-cli && echo n | npm install -g --silent @angular/cli@8.3.26  && npm install &&     ls /usr/src/app && rm package*.json -f && ls

