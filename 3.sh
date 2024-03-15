echo "please enter three numbers..."
p=0
n=0
z=0
for((a=1;a<=10;a++))
do
echo -n  "enter number:"
read num
if [ $num -gt 0 ]
then
   p=` echo " $p + 1 " | bc `
elif [ $num -lt 0 ]
then
      n=` echo " $n + 1 " | bc `
else
         z=` echo " $z + 1 " | bc `
fi
done
echo "total positive numbers are: $p"
echo "total negative numbers are: $n"
echo "total zeros are: $z"
