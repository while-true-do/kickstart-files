# Adding ssh key to your kickstart

This can be used for an admin account, your root or even (in smaller environments) for your personal account. Below you find an example for the root account. It is strongly recommended to have personal accounts.

You have to put such stuff in post section like below:
```
#...

%post

#...

## Install SSH key
### Create directory
mkdir /root/.ssh/

### Create File
cat <<EOF >/root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAxzYQTAq03wky9I5ygwh1SwVuQ/y1bYVpd3413hS+IXcPOm/iMuMhD8tnlQldLUFA9uOWivBCKiEHKU+0uVve5hGhoY8l3fNSWF2N8lSBmVyXvB6A8GQnkHJGR+ShD+3genqE+h/uAi+ABfqOx6tUZP8hbZm3INTyEiMIYN8szFeeLnnFYk2LXSbOxxrz0X8RMCIpJv2WbwCRoRFI01It1JuD/X0bUHQkMFOx/AQoG9V7f2X+n2l15yAiQBm5U9THPWVg91MXMfZELqLsFq5aIx+2jlnMF3vXTxvozmMaQvP1MZVWL8DxEYLixR71uLcqc5guH4nIvRrcS3QKyAGbCP3JlUgZU/7X4AnNsLdFj/WaKJMOn8XjMNAn6dNO+qLdd9wiHEHZUm0KXgznnjBveEPGR5bvOpKBZjU62FgNf4htE22smcQ0O4qN5QnuXmoeW9ClH6ZmY5Yz7m0hWwg1GRZGOysBocgLNMdvZWO2RuhR9fk18lQ4Bj3oIJfi/GeCwCh5EgyM4R6RrGXpegUcxymLTCBeM8GAKImLmqANXO79GH4oYnCLuf2PbMCsdMUtssdnIWfCfXaKswV1oBGR8BJsB7iMem4XGUesy4pZPqnzuFGSq9HusplO2yiXUaK0lP6oSOXgFXs5dN6/fW5FqcnwqKHDCND59FflBaQ8AQ== daniel@while-true-do.org
EOF

### set permissions
chmod 0700 /root/.ssh/
chmod 0600 /root/.ssh/authorized_keys

### fix selinux context
restorecon -R /root/.ssh/

# ...

%end
```
