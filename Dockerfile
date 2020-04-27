FROM node:12.16.2-stretch-slim
RUN mkdir -p ~/prebuild
WORKDIR /ngbuild
COPY package*.json /ngbuild/
RUN npm install npm@latest -g &&  npm install --global gulp-cli && echo n | npm install -g --silent @angular/cli  &&  echo n | npm install --silent @angular/cli &&  rm package*.json -f  && npm list -g && ls 
 