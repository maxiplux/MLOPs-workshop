#!/bin/bash
set -xe
sudo -i -u ec2-user bash <<EOF
echo "Stop and remove container"
if docker ps -a --format '{{.Names}}' | grep -q '^sklearn_flask$'; then
    docker stop sklearn_flask && docker rm sklearn_flask
fi
echo "Run the container"
docker run -d -p 8000:8000 --name sklearn_flask junglepolice/sklearn_flask:latest
EOF
