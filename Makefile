docker_build:
	@docker build \
		--build-arg WORK_DIR=/var/www/dev/ \
		-t docker.io/dakodapp/php-72 .

docker_push:
	@docker push docker.io/dakodapp/php-72

bp: docker_build docker_push