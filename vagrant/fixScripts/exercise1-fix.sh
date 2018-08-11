#!/bin/bash
#install curl because it doesn't come with the image
sudo apt-get install -y curl
#remove route definition
sudo route del www.textfiles.com
