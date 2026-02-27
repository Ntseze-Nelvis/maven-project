#!/bin/bash

# Update system packages
sudo dnf update -y

# Install Git and Maven
sudo dnf install -y git maven

# Install Java 11 (Amazon Corretto)
sudo dnf install -y java-11-amazon-corretto

# Set Java 11 as default
sudo alternatives --set java /usr/lib/jvm/java-11-amazon-corretto*/bin/java
sudo alternatives --set javac /usr/lib/jvm/java-11-amazon-corretto*/bin/javac

# Verify installations
java -version
javac -version
mvn -v

# Clone repository
cd ~
git clone https://github.com/Ntseze-Nelvis/maven-project.git

# Create Maven configuration directory
mkdir -p ~/.m2

mv ~/maven-project/settings.xml ~/.m2/settings.xml

# Move custom Maven settings if available
# mv /path/to/settings.xml ~/.m2/settings.xml