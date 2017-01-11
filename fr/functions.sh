#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# jv_pg_XX_myfunction () { }
# jv for JarVis
# pg for PluGin
# XX can be a two letters code for your plugin, ex: ww for Weather Wunderground
jv_pg_pt_lunch()
{
while read device
do
if [[ "$1" == "$device" ]]; then
prog="$(echo "$listechainetv" | jq -r ".devices[] | select(.nom==\"$device\") | .chainetv")"
PYTHONIOENCODING="UTF-8" python3 ./plugins/jarvis-progtv/fr/xmltv-tool.py -p -j cesoir -C $prog $jv_dir/plugins/jarvis-progtv/tnt.xml
fi
done <<< "$(echo "$listechainetv" | jq -r '.devices[].nom')"
}

jv_pg_tv_download() {
curl -k -o /tmp/progtv.zip http://xmltv.dtdns.net/download/tnt.zip
unzip -o /tmp/progtv.zip -d $jv_dir/plugins/jarvis-progtv/
rm /tmp/progtv.zip
}
