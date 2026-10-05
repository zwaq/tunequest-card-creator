.PHONY: build
build:
	docker build . -t zwaq/tqc:1.1.0

.PHONY: run
run:
	docker run --rm -it --name=tqc --publish 5173:80 -e SPOTIFY_CLIENT_ID=localhost -e SPOTIFY_REDIRECT_URI=localhost:5666 tqc
