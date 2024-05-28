#! /bin/bash
mkdir error 2>> ./.error.log
clear
echo "1)Add User"
echo "2)Remove User"
echo "3)Update Pass"
echo "4(List All Users"
echo "5)Exit"
while true;do
	read ch
	case $ch in 
		1) echo "Please,enter name"
	   	read name
	   	sudo useradd $name ;;
		2) echo "Please,enter which user want to delete it"
	   	read name2
	   	sudo userdel $name2 ;;
		3) passwd ;;
		4) awk -F : 'BEGIN{print"Users"} $3 >= 1000 && $3 !=65534 {print"Login User " $1 NR  }' /etc/passwd |
			grep wc -l  ;;
		5) exit ;;
		*) echo "Error Input"
	esac
done

