.PHONY: help build serve pack-preview

help:
	@echo "Usage:"
	@echo "  make serve                 # serve locally"
	@echo "  make serve-remote          # serve bound to 0.0.0.0"
	@echo "     -> view site remotely: http://<remote-ip>:4000"
	@echo "  make build YEAR=<year>     # build the site into ./<year> with baseurl=/<year>"
	@echo "  make pack-preview          # zip a slim preview from _site for sharing before publishing"

build:
	@if [ -z "$(YEAR)" ]; then \
		echo "Usage: make build YEAR=<year>"; \
		exit 1; \
	fi
	bundle exec jekyll build -d $(YEAR) --baseurl "/$(YEAR)"

serve:
	bundle exec jekyll serve

serve-remote:
	bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload --livereload-port 35729

pack-preview:
	./scripts/pack-preview.sh
