FROM node:12.16.2-stretch-slim
RUN mkdir -p ~/prebuild
WORKDIR /prebuild
# COPY NG 9.1.3 
COPY package*.json /prebuild/
RUN npm install
# PRE-CACHE NPM
