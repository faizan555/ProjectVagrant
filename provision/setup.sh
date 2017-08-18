#!/bin/bash

echo "Provisioning virtual machine..."

	apt-get update

echo "Installing Git"
	apt-get install git -y > /dev/null

echo "Installing Apache"
	apt-get install apache2 -y > /dev/null

echo "Installing MySQL"
	apt-get install debconf-utils -y > /dev/null
	debconf-set-selections <<< "mysql-server mysql-server/root_password password rootpw"
	debconf-set-selections <<< "mysql-server mysql-server/root_password_again password rootpw"

	apt-get install mysql-server -y > /dev/null

echo "Now Testing if Git is installed................................."
	if dpkg --get-selections | grep git; then 
		echo "Git... Installed";
	else	echo "Git... Not Installed!";
	fi

echo "Now Testing if Apache is installed................................."
	if dpkg --get-selections | grep apache2; then 
		echo "Apache... Installed";
	else	echo "Apache... Not Installed!";
	fi

echo "Now Testing if MySQL is installed................................."
	if dpkg --get-selections | grep mysql; then 
		echo "MYSQL... Installed";
	else	echo "MySQL... Not Installed!";
	fi

echo "Now Testing if Node is installed................................."
	if dpkg --get-selections | grep node; then 
		echo "Node... Installed"; 
	else	echo "Node... Not Installed";
	fi

echo "Cloning Git Repo................................................."
	mkdir -p opt/code
	cd opt/code
	git clone https://github.com/pythian/DevOps_Cloud_Automation_Engineer_Project.git


