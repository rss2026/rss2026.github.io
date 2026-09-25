.PHONY: help build serve docker-build docker-serve pack-preview

help:
	@echo "Usage:"
	@echo "  make serve                 # serve locally"
	@echo "  make docker-build          # build static files into _site using Docker"
	@echo "  make docker-serve          # Docker Jekyll with live reload (http://127.0.0.1:4000)"
	@echo "  make serve-remote          # serve bound to 0.0.0.0"
	@echo "     -> view site remotely: http://<remote-ip>:4000"
	@echo "  make build YEAR=<year>     # build the site into ./<year> with baseurl=/<year>"
	@echo "  make pack-preview          # build an upload-ready preview directory and zip"

build:
	@if [ -z "$(YEAR)" ]; then \
		echo "Usage: make build YEAR=<year>"; \
		exit 1; \
	fi
	bundle exec jekyll build -d $(YEAR) --baseurl "/$(YEAR)"

serve:
	bundle exec jekyll serve

docker-build:
	@if ! command -v docker >/dev/null 2>&1 || ! docker info >/dev/null 2>&1; then \
		echo "error: Docker must be running."; \
		exit 1; \
	fi
	docker run --rm --name rss-jekyll-build \
		--platform linux/amd64 \
		-v "$(CURDIR):/srv/jekyll" \
		-w /srv/jekyll \
		jekyll/jekyll:4.2.2 \
		jekyll build

docker-serve:
	@if ! command -v docker >/dev/null 2>&1 || ! docker info >/dev/null 2>&1; then \
		echo "error: Docker must be running."; \
		exit 1; \
	fi
	docker run --rm --name rss-jekyll-serve \
		--platform linux/amd64 \
		-v "$(CURDIR):/srv/jekyll" \
		-w /srv/jekyll \
		-p 4000:4000 \
		-p 35729:35729 \
		jekyll/jekyll:4.2.2 \
		jekyll serve --host 0.0.0.0 --port 4000 --livereload --livereload-port 35729 --force_polling

serve-remote:
	bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload --livereload-port 35729

pack-preview: docker-build
	./scripts/pack-preview.sh
