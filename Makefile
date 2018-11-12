GIT_BRANCH=$(shell git rev-parse --abbrev-ref HEAD)
USER=$(shell whoami)
STAGING_URL="https://docs-mongodborg-staging.corp.mongodb.com"
PRODUCTION_URL="https://docs.mongodb.com"
PRODUCTION_BUCKET=docs-mongodb-org-prod
PROJECT=conferences

.PHONY: deploy

deploy:
	mut-publish build/master/html ${PRODUCTION_BUCKET} --prefix=${PROJECT} --deploy ${ARGS}
	@echo "Hosted at ${PRODUCTION_URL}/${PROJECT}/europe.html"