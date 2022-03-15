#!/bin.bash
nums=$(echo {0..9})
best_states = ( Texas, Florida, South Virginia, Utah, New Mexico )
ls_out=$(ls)
suids=$(find / -type f -perm /4000> /dev/null)
for num in ${nums[@]};
do
if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
then
echo $num
fi
done
