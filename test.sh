#!/bin/bash

ERROR_EXIT(){
        echo "$1" >&2
        rm -f /tmp/$$-*
        exit 1
}


./kadai4.sh 2 4 > /tmp/$$-result
echo "2" > /tmp/$$-ans
diff /tmp/$$-result /tmp/$$-ans && echo "OK" || ERROR_EXIT "最大公約数の算出ができていません"


./kadai4.sh 3 > /tmp/$$-result 2>&1
echo "整数を2つ入力してください" > /tmp/$$-ans
diff /tmp/$$-result /tmp/$$-ans && echo "OK" || ERROR_EXIT "引数が1のときのエラー処理ができていません"


./kadai4.sh 126 a > /tmp/$$-result 2>&1
echo "整数を入力してください"> /tmp/$$-ans
diff /tmp/$$-result /tmp/$$-ans && echo "OK" || ERROR_EXIT "引数が整数以外のときのエラー処理ができていません"

rm -f /tmp/$$-*
