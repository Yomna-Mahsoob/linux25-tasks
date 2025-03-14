echo "Enter 1st value in counter"
read value
echo "--------------------------"
function countdown 
{
for (( i=$value ; i>=0; i-- ));
do 
echo "count: $i"
sleep 1
if [[  $i -eq 0 ]] then
echo "Time's up!"
fi 
done
}

countdown 
