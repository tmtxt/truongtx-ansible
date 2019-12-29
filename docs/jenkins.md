Steps to set up or update Jenkins server

Create server
- Create a new VPS, follow the steps in **setup-tmtxt.md** to set up a new sudoer user with name `tmtxt`.
- Make sure the current computer can ssh using `tmtxt` user

Run playbook
- Edit `hosts` file for the entry `jenkins`
- Source `env.sh`
- Run jenkins playbook by calling `run-jenkins`