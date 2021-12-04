#!/bin/sh
clear
echo "  ****************************************************************************************"
echo "  HELLO , THIS IS A SIMPLE CALCULATOR USING THE BASH PROGRAMMING LANGUAGE USING RAPBERRY PI"
echo "  *****************************************************************************************"


r=1
while [ $r -eq 1 ]
do
y=0
echo "  Choose your operation (choose a number)  "
echo "  1- Addition "
echo "  2- Soustraction"
echo "  3- Multiplication"
echo "  4- Division"

read a
while [ $a != 1 -a $a != 2 -a $a != 3 -a $a != 4 ]
do
echo "Error , type another "
read a
done

case $a in 
	1)  echo "You have chosen Addition ,type your two numbers"; read x; read y; echo "$(($x+$y))" |bc -l;;
	2)  echo "You have chosen Soustraction , type your two numbers"; read x; read y; echo "$(($x-$y))" |bc -l;;
	3)  echo "You have chosen Multiplication , type your two numbers"; read x; read y; echo "$(($x*$y))" |bc -l;;
	4)  echo "You have chosen Division , type your two numbers"; 
				 read x;
				while [ $y -eq 0 ]
				do
				echo " type a non null donominator"
				 read y ;
				 done
				 echo "scale=2; (($x/$y))" |bc -l;;
esac
echo " Do you want to do another operation (Type 1 for yes / 0 for no)"
read r
done
echo  " See you later"
