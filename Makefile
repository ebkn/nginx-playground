.PHONY: start
start:
	docker-compose up --build

.PHONY: restart
restart:
	docker-compose exec server service nginx reload
