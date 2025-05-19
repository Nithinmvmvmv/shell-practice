#!/bin/bash

#this line gives u colour and enables the colour,if u dont give end of colour then colour will apply for all lines
echo -e "\e[31m hi,welcome"
echo "good morning"

echo "-----------------------------------------"

#to end the colour line we need to provide \e[0m
#in this 1st line will be red and end ,
echo -e "\e[31m hi,welcome \e[0m"

#this line prints normal white colour
echo "Good morning"

#2nd colour
echo -e "\e[32m colour changed!!!!\e[0m "
echo "normal white colour!!"
echo "okkkkkkkkk"