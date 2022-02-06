Create shared network
docker network create network-goals

To run react:

docker run --name react --rm -p 3000:3000 -it react:latest


To run backend:
The order of the volumes (-v) command is important. Longer paths overwrite shorter, so creating a volume for logs after we bind mount the container to our host machine is fine. 
We are doing this to ensure that any changes made to the host machine source code are reflected without having to rebuild the image. Also, we have to create an anonymous volume for the node_modules directory so that the container references the node_modules directory inside itself and not the host machine.

docker run --name backend -d --rm --network goals-net -p 80:80 -v /home/sam/.local/samsprojects/MS_DockerKub/multi-container/backend:/app -e MONGODB_USERNAME=sam -e MONGODB_PASS=password back:latest


To run mongo:

 docker run --name mongodb --rm -d -v data:/data/db --network goals-net -e MONGO_INITDB_ROOT_USERNAME=sam -e MONGO_INITDB_ROOT_PASSWORD=password mongo:latest




