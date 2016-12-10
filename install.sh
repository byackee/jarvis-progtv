#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software
sudo apt-get install -y python3 python3-pip python3-lxml
sudo pip3 install plac
sudo pip3 install yattag
sudo pip3 install pytz
echo "@midnight                               wget "http://www.kazer.org/tvguide.xml?u=4cgh4dkv94d6wC" -o NUL -O ./plugins/jarvis-progtv/tvguide.xml 2>NUL" >> ./jarvis-events
wget "http://www.kazer.org/tvguide.xml?u=4cgh4dkv94d6wC" -o NUL -O tvguide.xml 2>NUL

