#!/bin/bash
set -xe


# run as ec2-user
sudo -i -u ec2-user bash <<EOF
docker run -d -p 8000:8000 --name sklearn_flask junglepolice/sklearn_flask:latest
EOF