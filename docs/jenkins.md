Steps to set up or update Jenkins server

Create server
- Create a new VPS, follow the steps in **setup-tmtxt.md** to set up a new sudoer user with name `tmtxt`.
- Make sure the current computer can ssh using `tmtxt` user
- If you us AWS Lightsail, remember to also add more allowed ports on Networking setup

Run playbook
- Edit `hosts` file for the entry `jenkins`
- Source `env.sh`
- Run jenkins playbook by calling `run-jenkins`

What is included in Jenkins server?
- Open JDK 11
- Jenkins
- Nginx
- UFW: allows port ssh, http, https

