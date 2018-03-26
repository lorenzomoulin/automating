#!/bin/bash

COMANDO=$(command -v xdotool)

if [ "$COMANDO" ];then
	gedit $1 &
	sleep 2.5
	xdotool type '#include<stdio.h>'
	xdotool key Return; xdotool key Return; xdotool type 'int main(){';xdotool key Return
	xdotool key Tab; xdotool type 'return 0;'; xdotool key Return; xdotool type '}'
else 
	dialog --title "Erro" --infobox "tem que instalar o Xdotool, retardado" 10 30; sleep 4; clear
fi 
