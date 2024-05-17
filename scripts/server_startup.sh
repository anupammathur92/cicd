#!/bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 627528354366.dkr.ecr.us-east-1.amazonaws.com
sudo docker pull 627528354366.dkr.ecr.us-east-1.amazonaws.com/codepipelineecr:latest
sudo bash -c 'cd /var/www/html/myapp/ && docker stop myphpapp && docker rm myphpapp && docker run -p 8080:80 --name myphpapp -d 627528354366.dkr.ecr.us-east-1.amazonaws.com/codepipelineecr:latest'