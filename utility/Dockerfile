FROM node:17-alpine
USER node 
# This user , node, is mapped to uid 1000, which is also my own uid, so there is not root permission issue
WORKDIR /app
ENTRYPOINT [ "npm" ]
