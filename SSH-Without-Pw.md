# SSH without pw

## On client

- ``ssh-keygen``: Generates private and public cert
- ``ssh-copy-id userid@hostname`` Share public cert with server
- ``ssh userid@hostname``: Login to server without pw
