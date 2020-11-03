echo "Please enter your plain message"
read -p "[Enter]"
echo "" > .inputMsg.txt
nano .inputMsg.txt

echo
echo "Please enter receiver"
read -p "[Enter]"
pIdentity=$(gpg --list-public-keys | perl -ne '/^uid.*<([^<]+)>/ && print "$1\n"' | fzf)

echo
echo "-"
echo "Got $pIdentity"
echo "Encrypt now"
echo "-"
gpg --recipient "$pIdentity" --encrypt --armor ".inputMsg.txt"

echo
echo "############## MSG ##############"
cat .inputMsg.txt
echo "############## MSG ##############"

echo
echo "############## ENCRYPTED MSG ##############"
cat .inputMsg.txt.asc
echo "############## ENCRYPTED MSG ##############"

rm .inputMsg.txt
rm .inputMsg.txt.asc