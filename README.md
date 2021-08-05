## Serverless cacheless chat room 

The idea is to play with Golang and push it's boundaries. Here, we build a 
binary that simulates a chatroom! 

* Everyone who has this binary running on their machines, effectively starts their own chat!
* Start the binary using `gochat --name Gautam --port 12345 --host 192.168.1.12` 
* It broadcasts on port 33333 to update any new chatroom about it's existance. Effectively, this is also a health check
* It listens on the port mentioned in the cmd line for any incoming requests for chatting.
* All communication is via gRPC so that we are very sure about the structure of the messages exchanges.
* Channels and Go-routines should be used to manage each chatroom for public and private messaging!

Innovate over this idea!

## Learning from master branch

There are 9 steps which are marked in the code `TODO-WORKSHOP-STEP-?` which need to be implemented in order. Implement them and have fun!


## Contributing back

Fork and submit PR


## How to run

1. Install docker and docker-compose (https://docs.docker.com/docker-for-mac/install/ )
2. Clone the repo in the $GOPATH/src/ directory.
3. Run `docker-compose up --build` in one terminal
4. Open another terminal and run `docker-compose exec gochat1 bash`
5. Type `gochat --name user1 --host 10.5.0.5 --port 3100`
6. Open another terminal and run `docker-compose exec gochat2 bash`
7. Type `gochat --name user2 --host 10.5.0.6 --port 3100`
8. Try commands like `/users` , `@user1 hi`


Sample execution : https://www.loom.com/share/d931da76f6054e678ce64f87363f4358 