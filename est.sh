#!/bin/sh

if test 1 -ne $# ; then
	echo "現在のゲーム内日数を引数として指定してください"
	echo "例: ./est.sh 100"
	exit 1
fi
quotient=`expr $1 / 7`
remainder=`expr $1 % 7`
if test ${remainder} -eq 0 ; then
	nextday=`expr $1`
else
	nextday=`expr \( ${quotient} + 1 \) \* 7`
fi

remaining=`expr ${nextday} - $1`

echo "現在:${1}日　次の大規模襲撃:${nextday}日　大規模襲撃まで:${remaining}日と少し"

# exprコマンドで式中の ()*はエスケープ必要
