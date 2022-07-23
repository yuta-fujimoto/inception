FILE := srcs/docker-compose.yml

# make containers and start with background
up:
	docker-compose -f ${FILE} up -d --build

# stop and delete containers
down:
	docker-compose -f ${FILE} down

# stop and delete containers
down:
	docker-compose -f ${FILE} rm

# restart containers
re:
	docker-compose -f ${FILE} restart

