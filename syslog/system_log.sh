i="0"; 

if [[ $1 -eq 0 ]];
then
echo "Usage: ./memlog <pid>";
exit 1;
fi

while sleep 1; 
do 

#echo -e $i; 
#tmp=$(ps -p $1 -o pcpu= -o pmem=)
echo -n $(date);
echo -n  " "$i" ";
echo $(ps -p $1 -o pcpu= -o pmem=); 

i=$[$i+1];
done
