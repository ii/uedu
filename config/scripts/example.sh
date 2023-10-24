#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'This is an example shell script'
echo 'Scripts here will run during build if specified in recipe.yml'
# Install Java
rpm-ostree install -y java-17-openjdk
export PATH="/usr/lib/jvm/java-17-openjdk-17.0.8.0.7-1.fc38.x86_64/bin:$PATH"
echo $PATH

mkdir  usr/bin/minecraftforge && \
cd usr/bin/minecraftforge && \
wget "https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.2.0/forge-1.20.1-47.2.0-mdk.zip" -O temp.zip && \
unzip temp.zip && \ 
rm temp.zip
ls usr/bin