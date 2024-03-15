echo -n "enter number: "
read num
sum=0
a=0
while [ $num -gt 0 ]
do
	a=` expr $num % 10 `
	num=` expr $num / 10 `
	sum=` expr $a + $sum `	
done

echo "sum of digits: $sum"

