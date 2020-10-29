if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo
echo "----- Init FROM PATH (without / at end) -----"
echo $1
ls -all $1

echo
echo "----- Init FROM PATH (without / at end) -----"
echo $2
ls -all $2

echo
echo "----- Processed path -----"
fromPath="$1/"
toPath="$2/"
echo "From Path (with / at end): '${fromPath}'"
echo "To Path (with / at end): '${toPath}'"

echo
echo "PLEASE WAIT 15 s"
sleep 15

echo
echo "-Start COPY NOW-"

rm rSyncSuc.log rSyncErr.log

echo "Start Copy" >> rSyncSuc.log
echo $fromPath >> rSyncSuc.log
echo $toPath >> rSyncSuc.log
echo >> rSyncSuc.log

sudo rsync -a -h --progress --stats $fromPath $toPath 1> rSyncSuc.log 2> rSyncErr.log &