#!/bin/bash

terraform apply -auto-approve
REPOSITORY_URL=$(terraform output repository_url)
echo $REPOSITORY_URL

docker push ${REPOSITORY_URL} || \
  ( echo "Login expired. Relogging in..." && \
  eval $(aws ecr get-login --no-include-email --region us-east-1 ) && \
    docker push ${REPOSITORY_URL} )


