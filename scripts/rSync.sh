echo
echo "----- Init FROM PATH (without / at end) -----"
echo $1
ls -all $1
#echo "Memory:"
#du -sh $1

echo
echo "----- Init FROM PATH (without / at end) -----"
echo $2
ls -all $2
#echo "Memory:"
#du -sh $2

echo
echo "----- Processed path -----"
fromPath="$1/"
toPath="$2/"
echo "From Path (with / at end): '${fromPath}'"
echo "To Path (with / at end): '${toPath}'"

echo
echo "PLEASE WAIT 15 s"
sleep 15

#read  -n 1 -p "Please press okay:" mainmenuinput

echo "-Start COPY NOW-"

rm rSyncSuc.log rSyncErr.log
sudo rsync -r -l -h --progress --stats $fromPath $toPath 1> rSyncSuc.log 2> rSyncErr.log &