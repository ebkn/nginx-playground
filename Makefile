.PHONY: start
start:
	docker-compose up --build -d

.PHONY: restart
restart:
	docker-compose exec server service nginx reload
