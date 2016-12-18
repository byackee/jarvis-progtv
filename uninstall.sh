#!/bin/bash
# Use only if you need to undo changes on the user system such as removing software
sed -i".bak" '/programme*tv/d' ../../jarvis-events
