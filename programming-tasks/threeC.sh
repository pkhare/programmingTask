#!/bin/bash

TFILE="./bash/out.tmp.$$"

for file in bash/Zalora-*;do
	echo $file;
	
	#sed -e 's/\([a-z]\)/\U\1/g' $file > $TFILE && mv $TFILE ./bash/output.txt
	sed -e 'y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/'  $file > $TFILE && mv $TFILE $file
done


OLD="\."
NEW=""
for file in bash/Zalora-*;do
	
	sed s/$OLD/$NEW/g $file  > $TFILE && mv $TFILE $file
	
	#sed -e 'y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/'  $file > $TFILE && mv $TFILE $file
done
