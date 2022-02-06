Create shared network
docker network create network-goals

To run mongodb:
docker run --name mongodb --rm -d --network goals-net mongo:latest

To run backend
docker run --name backend --network goals-net --rm -d -p 80:80 back:latest

To run react
docker run --name react --rm -p 3000:3000 -it react:latest

