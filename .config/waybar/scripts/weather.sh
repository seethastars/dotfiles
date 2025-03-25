#!/bin/bash

# Simple script that pull and displays weather based on current location

curl -s "wttr.in/campobasso?format=%t%c\n" | sed 's/+//g; s/C/C /g; s/ //g'

