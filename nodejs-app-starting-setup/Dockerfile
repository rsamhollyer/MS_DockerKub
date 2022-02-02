
# Dockerfile NOT DockerFile
FROM node

WORKDIR /app

COPY package.json /app 
# This optimizes are rebuild time if we need to make changes to a file. It will not re-install anything if packagejson has not changed
RUN npm install

COPY . /app
# COPY . . Copies the relative path to /app since it is the WD. Less verbose
EXPOSE 80

CMD ["node" ,"server.js"]