echo "Please enter to-encrypt-file"
read -p "[Enter]"
pFileName=$(ls -a | fzf)

echo
echo "Please enter receiver"
read -p "[Enter]"
pIdentity=$(gpg --list-public-keys | perl -ne '/^uid.*<([^<]+)>/ && print "$1\n"' | fzf)

echo
echo "-"
echo "Got $pFileName"
echo "Got $pIdentity"
echo "Encrypt now"
echo "-"

gpg --recipient "$pIdentity" --encrypt --armor "$pFileName"