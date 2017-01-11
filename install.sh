#!/bin/bash
# Use only if you need to perform changes on the user system such as installing software
sudo apt-get install -y python3 python3-pip libxml2-dev libxslt1-dev python3-lxml unzip
sudo pip3 install plac
sudo pip3 install yattag
sudo pip3 install pytz
sudo pip3 install lxml
echo "    @midnight                               $jv_dir/jarvis.sh -x \"telecharge le programme tv\"" >> "$jv_dir/jarvis-events"
crontab jarvis-events -i
curl -k -o /tmp/progtv.zip http://xmltv.dtdns.net/download/tnt.zip
unzip -o /tmp/progtv.zip -d $jv_dir/plugins/jarvis-progtv/
rm /tmp/progtv.zip
