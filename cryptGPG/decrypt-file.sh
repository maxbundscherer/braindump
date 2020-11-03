echo "Please enter to-decrypt-file"
read -p "[Enter]"
pFileName=$(ls -a | fzf)

echo
echo "Please enter author"
read -p "[Enter]"
pIdentity=$(gpg --list-secret-keys | perl -ne '/^uid.*<([^<]+)>/ && print "$1\n"' | fzf)

echo
echo "Mkdir decrypt-output"
mkdir decrypt-output

echo
echo "-"
echo "Got $pFileName"
echo "Got $pIdentity"
echo "Decrypt now"
echo "-"

gpg --recipient "$pIdentity" --decrypt "$pFileName" > "decrypt-output/$pFileName"