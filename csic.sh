#!/bin/sh
IFS=','
for F in ifile.txt; do
	while read -r GET; do
		read -r User
		read -r Pragma
		read -r Cache
		read -r Accept
		read -r Host
		read -r Cookie
		read -r Connection
		read -r POST
		read -r Content
		read -r id
		echo "${GET#*=}, ${User#*=}, ${Pragma#*=}, ${Cache#*=}, ${Accept#*=}, ${Host#*=}, ${Cookie#*=}, ${Connection#*=}, ${POST#*=}, ${Content#*=}, ${id#*=}" >> csic.csv
	done < "$F"
done
