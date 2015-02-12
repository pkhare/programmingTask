#!/bin/bash
HOST='10.11.12.13'	
USER='helloFTP'	
PASSWD='world'
ftp -n $HOST < quote USER $USER
quote PASS $PASSWD
bin
prompt off

lcd home/Marketing Report/Data/	# this location is local directory 

mget webtrekk_marketing*

bye

python home/Marketing Report/Scripts/ZMR.py

USERNAME = 'helloDB'

MYDATABASE = 'zalora'

psql -h $HOST -p 5439 -U $USERNAME -d $MYDATABASE -a -f home/Marketing Report/Scripts/UpdateWebtrekk.sql #assuming that password for helloDB is set in .pgpass file


END_SCRIPT