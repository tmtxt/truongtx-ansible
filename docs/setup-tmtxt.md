Steps to run on new VPS to create `tmtxt` user, apply for all VPS

SSH to the VPS and run these commands

```console
sudo adduser tmtxt

#
sudo -iu root
echo "tmtxt    ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
service ssh restart
exit
```

Copy ssh key
```console
sudo -iu tmtxt
cd && mkdir ~/.ssh && cd .ssh && vi authorized_keys
```