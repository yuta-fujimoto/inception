FILE := srcs/docker-compose.yml

# make containers and start with background
up:
	docker-compose -f ${FILE} up -d --build

# stop and delete containers
down:
	docker stop $(shell docker ps -qa); docker rm $(shell docker ps -qa);
	docker rmi -f $(shell docker images -qa); docker volume rm $(shell docker volume ls -q);
	docker network rm $(shell docker network ls -q) 2>/dev/null

# restart containers
re:
	docker-compose -f ${FILE} restart

