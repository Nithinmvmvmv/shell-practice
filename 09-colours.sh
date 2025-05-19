#!/bin/bash

#this line gives u colour and enables the colour,if u dont give end of colour then colour will apply for all lines
echo -e "\e[31m hi,welcome"
echo good morning

#to end the colour line we need to provide \e[0m
echo -e "\e[31m hi,welcome \e[0m"
echo good morning