# How to install Dbeaver in Ubuntu?

- `$ wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -`	
- `$ echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list`
- `$ sudo apt update`
- `$ sudo apt -y  install dbeaver-ce`

OR
        
- `$ sudo add-apt-repository ppa:serge-rider/dbeaver-ce`
- `$ sudo apt-get update`
- `$ sudo apt-get install dbeaver-ce`

<br />

### HOW TO BRING ALL THE SETTINGS OF DBEAVER FROM WINDOWS TO UBUNTU?

1. Copy the folder DBeaverData from Windows or if you have access to Windows drive access in ubuntu then the below path:

        /media/cazpian/OS/Users/Prince.rathor/AppData/Roaming/DBeaverData

2. Paste this folder in the below path of ubuntu:
   
        /home/cazpian/.local/share/DBeaverData