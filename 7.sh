echo "to create user enter 1: "
echo "to delete user enter 2: "
echo "to create group enter 3: "
echo "to delete group enter 4: "
read choice

case $choice in
	1)	
		echo "enter user name to create: "
		read uname
		sudo adduser $uname
	;;
	2)
		echo "enter user name to delete: "
		read dname
		sudo deluser $dname
	;;	
	3)
		echo "enter group name to create: "
		read ugroup
		sudo adduser $ugroup
	;;	
	4)
		echo "enter group name to delete: "
		read dgroup
		sudo deluser $dgroup
	;;
esac
		

