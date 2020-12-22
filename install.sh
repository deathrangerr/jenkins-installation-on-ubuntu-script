#!/bin/bash
sudo apt update


sudo apt install wget git vim vi nano curl openjdk-8-jdk -y


sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add –


sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'


sudo apt update


sudo apt install jenkins -y


sudo systemctl start jenkins


sudo systemctl status jenkins


sudo usermod -aG sudo jenkins


sudo sed -i '26 a jenkins  ALL=(ALL) NOPASSWD:ALL' /etc/sudoers

sed -i '63d HTTP_PORT=8090' /etc/default/jenkins
sed -i '63 a HTTP_PORT=8090' /etc/default/jenkins
