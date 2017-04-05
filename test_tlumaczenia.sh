#!/bin/bash
a=0
for i in $(cat tlumaczenia/* | cut -d '=' -f 1 | cut -d ' ' -f 2 | sed 's/#.*//g')
do
	if [ "$(grep $i $(ls -la | grep '\-rwxr-xr-x' | sed 's/.* //g'))" = "" ];then
		echo $i
		sed -i "/export $i/ s/export $i/#export $i/" tlumaczenia/*
	fi





done

