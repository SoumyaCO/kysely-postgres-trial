postgres:
	docker run -d --name supatest -p 5432:5432 \
	-e POSTGRES_USER=root \
	-e POSTGRES_PASSWORD=secret \
	-e POSTGRES_DATABASE=users \
	-v ./postgres:/var/lib/postgresql/data \
	postgres:12-alpine

createdb:
	docker exec -it supatest createdb --username=root users

dropdb:
	docker exec -it supatest dropdb users

.PHONY: postgres createdb dropdb
