#!/bin/sh
exec tail -Fn0 /logfile|while read;do echo "$REPLY"|grep -q "$SEARCH_TEXT" && curl -X GET $URL;done