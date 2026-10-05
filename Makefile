.PHONY: build
build:
	docker buildx build . \
		--platform=linux/amd64,linux/arm64 \
		--tag=zwaq/tunequest-card-creator:1.1.0 \
		--push

.PHONY: run
run:
	docker run --rm -it --name=tqc --publish 5173:80 -e SPOTIFY_CLIENT_ID=localhost -e SPOTIFY_REDIRECT_URI=localhost:5666 tqc
