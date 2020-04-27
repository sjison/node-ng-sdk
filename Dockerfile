FROM node:12.16.2-stretch-slim
RUN mkdir -p ~/prebuild
WORKDIR /prebuild
COPY package*.json /prebuild/
RUN npm install npm@latest -g &&  echo n | npm install -g --silent @angular/cli  &&  echo n | npm install --silent @angular/cli &&  rm node_modules -fr && npm list -g && ls 
WORKDIR /
RUN rm /prebuild -fr