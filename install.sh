#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software
sudo apt-get install -y python3 python3-pip python3-lxml
sudo pip3 install plac
sudo pip3 install yattag
sudo pip3 install pytz
echo "@midnight                               curl -k -o ./plugins/jarvis-progtv/test.xml https://www.kazer.org/tvguide.xml?u=4cgh4dkv94d6wC" >> jarvis-events
curl -k -o ./plugins/jarvis-progtv/test.xml https://www.kazer.org/tvguide.xml?u=4cgh4dkv94d6wC
