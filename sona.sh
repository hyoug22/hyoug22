#!/bin/bash
# description :installation of sonarqube on centos7
#Author :fabiola

echo "sonarqube installatin on centos7 in progress ..."
sleep 3
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
# cd into the /opt directory
cd /opt
sudo yum install wget net-tools -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
echo
echo "installation was successful !"
echo "system starting sonarqube now ..."
sleep 1
echo "system in the process of retrieving current ip address..."
sleep 2
echo "below is you IP address :"
sudo ifconfig | grep 192


NB:Some servers have firewall enabled. So if you are not able to connect from the browser, then you might want to open the port 9000 with this command:     
sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload
