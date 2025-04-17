#!/bin/sh

curl -sL wttr.in/LOCATION?format=1 | sed 's/ \+/ /'
