echo "Please enter your crypted message"
read -p "[Enter]"
echo "" > .inputMsg.txt.asc
nano .inputMsg.txt.asc

echo
echo "Please enter author"
read -p "[Enter]"
pIdentity=$(gpg --list-secret-keys | perl -ne '/^uid.*<([^<]+)>/ && print "$1\n"' | fzf)

echo
echo "-"
echo "Got $pIdentity"
echo "Decrypt now"
echo "-"

gpg --recipient "$pIdentity" --decrypt ".inputMsg.txt.asc" > ".inputMsg.txt"

echo
echo "############## ENCRYPTED MSG ##############"
cat .inputMsg.txt.asc
echo "############## ENCRYPTED MSG ##############"

echo
echo "############## MSG ##############"
cat .inputMsg.txt
echo "############## MSG ##############"

rm .inputMsg.txt
rm .inputMsg.txt.asc