# Important commands

## General

- ``pkill <process_name>``: Kills process by name
- ``htop``: Shows activity monitor
- ``df -h``: Shows free disk space (global)
- ``du -sh Desktop``: Shows disk usage
- ``free -m``: Shows free ram in mb (works not on mac)
- ``ls -all -block-size=MB``: Shows ls with size in mb (works not on mac)
- ``scp /localPath/file.txt user@hostname:/remotePath/file.txt``: Copy file from local host to ssh server
- ``ssh user@hostname <command>``: Runs command over ssh

## Docker

- ``docker build -t <image_tag>:latest .``: Build local Dockerfile to image with custom tag
- ``docker run --rm --name <container_name> <image_tag>``: Run container with custom name from image and remove it after termination

## SSH set passphrase

- ``ssh-keygen -p``

## SSH without Password

(on client)

- ``ssh-keygen``: Generates private and public cert
- ``ssh-copy-id userid@hostname`` Share public cert with server
- ``ssh userid@hostname``: Login to server without pw

## Mount/Unmount ubuntu

- ``mount | grep mnt``: Check already mounted
- ``sudo lsblk``: Get disks for mount
- ``sudo mount /dev/sdd2 /mnt/mountExt``: Mount (create dir before)
- ``sudo umount /dev/sdd2``: tbd

## Do for each file in dir

```
for file in mb_input/*
do
filename=${file#*/}

    echo "Proc now"
    echo $filename

    printAns=`./darknet detect cfg/yolov3.cfg yolov3.weights mb_input/$filename`

    cp predictions.jpg mb_output/$filename
    convert mb_output/$filename -background Khaki -pointsize 20 label:"$printAns" -gravity Center -append mb_output/$filename

    echo $printAns >> result.csv
    echo $printAns

done
```
