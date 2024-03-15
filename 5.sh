echo "enter string: "
read str
reverse=$( echo $str | rev ) 
if [ $str == $reverse ]
then
	echo "it is palindrome"
else
	echo "it is not palindrome"
fi
