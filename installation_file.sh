#!/bin/bash
suo yum update -y
sudo yum install docker -y
sudo chmod 666 /var/run/docker.sock
sudo usermod -aG docker ec2-user
sudo systemctl start docker
sudo systemctl enable docker
docker run -d -- name -p 8080:8080 image_name
docker ps 
