#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software
sudo apt-get install -y python3 python3-pip python3-lxml
sudo pip3 install plac
sudo pip3 install yattag
sudo pip3 install pytz
echo "@midnight                               ./plugins/jarvis-progtv/download.sh" >> ./jarvis-events
curl -k -o ./temp.zip https://www.kazer.org/tvguide.zip?u=4cgh4dkv94d6wC
unzip -o ./temp.zip -d ./
rm ./temp.zip
