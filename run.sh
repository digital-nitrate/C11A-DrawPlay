#!/bin/bash

EXEC="DrawPlay.jar"

if [ ! -f "$EXEC" ]; then
	echo "File $EXEC Not Found"
	exit 1
fi

java -jar "$EXEC"
