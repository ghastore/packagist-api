FROM alpine

LABEL "name"="Packagist API Fetch"
LABEL "description"="GitHub Action to get Packagist API responses and save them to repository."
LABEL "maintainer"="Kai Kimera <mail@kai.kim>"
LABEL "repository"="https://github.com/ghastore/packagist-api"
LABEL "homepage"="https://github.com/ghastore"

COPY *.sh /
RUN apk add --no-cache bash curl git git-lfs jq

ENTRYPOINT ["/entrypoint.sh"]
