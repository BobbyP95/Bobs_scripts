#!/bin/bash

start="yes" 


function sh
{
fileName=$name.sh
touch $fileName
echo '#!/bin/bash
echo "Hello Bro" ' >$fileName
echo "$fileName"
./$fileName
}

function c
{
fileName=$name.c
touch $fileName
echo '#include <stdio.h>
#include <stdlib.h>
int main()
{
    printf("Lets write C code \n");
}
 ' >$fileName
echo "$fileName"
gcc -o $name $fileName
./$name.exe
}

function h
{
fileName=$name.h
touch $fileName
echo '#include <stdio.h>
#include <stdlib.h>
'>$fileName
echo "$fileName"
}

function py
{
    fileName=$name.py
    touch $fileName
    echo 'hello python'>$fileName
    echo "Done!!!"
}

while (( $start=="yes" ))
do
    read -p "File name: " name
    echo "select 1-3 file type
1. Shell script
2. C file
3. Header file for C
4. Python
"
    read -p "File type: " typ 
    case $typ in
        "1")
            sh ;;
        "2")
            c ;;
        "3")
            h ;;
        "4")
            py ;;
        *)
            echo "wrong input" ;;
    esac
    read -p "enter 'yes' to try again: " start
    if [ "$start" != "yes" ]
    then
        break
      
    fi
done    
clear

