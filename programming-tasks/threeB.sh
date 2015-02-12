#!/bin/bash

for file in bash/zalora*;do
	mv "$file" "${file/z/Z}";
done
