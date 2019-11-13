# Important commands

## General

- ``pkill <process_name>``: Kills process by name
- ``htop``: Shows activity monitor
- ``df -h``: Shows free disk-space
- ``free -m``: Shows free ram in mb (works not on mac)
- ``ls -all -block-size=MB``: Shows ls with size in mb (works not on mac)
- ``scp /localPath/file.txt user@hostname:/remotePath/file.txt``: Copy file from local host to ssh server
- ``ssh user@hostname <command>``: Runs command over ssh

## Docker

- ``docker build -t <image_tag>:latest .``: Build local Dockerfile to image with custom tag
- ``docker run --rm --name <container_name> <image_tag>``: Run container with custom name from image and remove it after termination
