#!/bin/bash

# Clone repository
git clone -b master https://github.com/yerkebayev/Milestone-Demo.git

# Change to repository directory
sudo service mysql start
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';"


# Install dependencies and compile code
cd Milestone-Demo
mvn clean install

# Run program
java -jar target/cse364-project-1.0-SNAPSHOT-jar-jar-with-dependencies.jar

