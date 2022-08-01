echo "Sudo Before!"

tmutil listbackups | while read line; do
    if [[ $line == *"2021"* ]]; then

        firstString=$line
        secondString=""
        fileString="${firstString/.backup/$secondString}"

        echo "\n\nRemove '$fileString'"

        tmutil delete -p "/Volumes/Time Machine-Backups/Backups.backupdb/Maximilians MacBook Pro/$fileString"
    fi
done
