#!/bin/sh

func(){

        if [ $2 = 0 ]
        then
               echo $1
        else
                z=$(($1%$2))
                echo $(func $2 $z )
        fi
}

if [ $# -ne 2 ]
then
        echo "整数を2つ入力してください" 1>&2
        exit 1
fi

expr $1 + $2 > /dev/null 2>&1
if [ $? -ge 2 ]
then
        echo "整数を入力してください" 1>&2
        exit 1
fi

func $1 $2
