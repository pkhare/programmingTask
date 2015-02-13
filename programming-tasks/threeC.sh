#!/bin/bash

TFILE="./bash/out.tmp.$$"
#convert to UPPER CASE from lower case
for file in bash/Zalora-*;do
	echo $file;
	
	
	sed -e 'y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/'  $file > $TFILE && mv $TFILE $file
done

#remove the '.' chracter
OLD="\."
NEW=""
for file in bash/Zalora-*;do
	
	sed s/$OLD/$NEW/g $file  > $TFILE && mv $TFILE $file
	

done
