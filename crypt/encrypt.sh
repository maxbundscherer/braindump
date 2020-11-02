ls -all
read -p "Filename (e.g sample.txt): " pFileName

echo
gpg --list-public-keys
read -p "Identity (e.g Max Mustermann): " pIdentity

echo "-"
echo "Got $pFileName"
echo "Got $pIdentity"
echo "Encrypt now"
echo "-"

gpg --recipient "$pIdentity" --encrypt --armor "$pFileName"