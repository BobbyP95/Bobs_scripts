#!/bin/bash

read -p "File name: " name


gcc -o $name $name.c 

./$name.exe