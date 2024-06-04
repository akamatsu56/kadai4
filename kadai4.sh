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

if [ $# = 2 ]
then
        expr "$1" + 1 > /dev/null
        if [ $? = 2 ]
        then
                echo "整数を入力してください"
        else
                expr "$2" + 1 > /dev/null
                if [ $? = 2 ]
                then
                        echo "整数を入力してください"
                else
                        func $1 $2
                fi
        fi
else
        echo "整数を2つ入力してください"
fi
