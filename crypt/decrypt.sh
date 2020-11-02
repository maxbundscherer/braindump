ls -all
read -p "Filename (e.g sample.txt.asc): " pFileName

echo
gpg --list-secret-keys
read -p "Identity (e.g Max Mustermann): " pIdentity

echo "Mkdir decrypt"
mkdir decrypt-output

echo "-"
echo "Got $pFileName"
echo "Got $pIdentity"
echo "Decrypt now"
echo "-"

gpg --recipient "$pIdentity" --decrypt "$pFileName" > "decrypt-output/$pFileName"