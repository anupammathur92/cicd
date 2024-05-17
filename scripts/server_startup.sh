#!/bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 627528354366.dkr.ecr.us-east-1.amazonaws.com
sudo docker pull 627528354366.dkr.ecr.us-east-1.amazonaws.com/codepipelineecr:latest
sudo bash -c 'cd /var/www/html/myapp/ && docker run --name myphpapp -d 627528354366.dkr.ecr.us-east-1.amazonaws.com/codepipelineecr:latest'