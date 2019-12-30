For Jenkins server, it's easier to just use the command line to set up than using Ansible. Here are
the steps to set up or update Jenkins server.

Create server
- Create a new VPS, follow the steps in **setup-tmtxt.md** to set up a new sudoer user with name `tmtxt`.
- Make sure the current computer can ssh using `tmtxt` user
- If you us AWS Lightsail, remember to also add more allowed ports on Networking setup

Run the jenkins.yml playbook to set up some initial personal workflow stuff
- Edit `hosts` file for the entry `jenkins`
- Source `env.sh`
- Run jenkins playbook by calling `run-jenkins`

SSH and run these commands to set up Jenkins server
```console
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y

# use this command to view setup password
sudo less /var/lib/jenkins/secrets/initialAdminPassword
# Access jenkins.truongtx.me:8080 to use

# Optionally, run this command to redirect port 80 to 8080
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
```
