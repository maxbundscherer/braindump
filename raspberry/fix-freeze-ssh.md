# Fix freeze ssh

sudo -s

echo "IPQoS cs0 cs0" >> /etc/ssh/sshd_config
