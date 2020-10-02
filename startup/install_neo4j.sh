# Install Java 11
sudo add-apt-repository -y ppa:openjdk-r/ppa
sudo apt-get update
# You are now ready to install Neo4j, which will install Java 11 automatically if it is not already installed. 
# Note: If you have multiple versions of java installed in your system, you can check the installed versions using the following command
# sudo apt install java-common
# update-java-alternatives --list
# Based on the list above, you can select your target java version using the following command
# sudo update-java-alternatives --jre --set <java11name>

# Add Neo4J repository
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
echo 'deb https://debian.neo4j.com stable latest' | sudo tee -a /etc/apt/sources.list.d/neo4j.list
sudo apt-get -y update

# Install Neo4J community edition version 4.1.1
sudo apt-get install -y neo4j=1:4.1.1

# go to /etc/neo4j and update conf file to allow remote connections...

cd /etc/neo4j
sudo sed -i 's/#dbms.default_listen_address=0.0.0.0/dbms.default_listen_address=0.0.0.0/g' neo4j.conf
sudo service neo4j restart

# then run `service neo4j status and check it's running on 0.0.0.0`