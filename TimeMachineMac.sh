echo "Sudo Before!"

tmutil listbackups | while read line; do
    if [[ $line == *"2022"* ]]; then

        echo
        echo "Remove String '$line'"

        # firstString=$line
        # secondString=""
        # fileString="${firstString/.backup/$secondString}"

        tmutil delete -p "$line"
    fi
done
