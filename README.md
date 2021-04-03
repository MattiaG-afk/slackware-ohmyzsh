# gentoo-ohmyzsh
This plugin adds some aliases and functions to work with Slackware Linux

## Features
#### SLACKPKG
 
| Alias     | Command                            | Description                                                         |
|-----------|------------------------------------|---------------------------------------------------------------------|
| install   | sudo slackpkg install <packet>     | Install the <packet> packet in the system                           |
| remove    | sudo slackpkg remove <packet>      | Uninstall the <packet> packet in the system                         |
| search    | sudo slackpkg search <packet>      | Search the <packet> packet in the local repository                  |
| info      | sudo slackpkg info <packet>        | Give info about <packet>                                            |
| clean     | sudo slackpkg clean-system         | Clean the system from obsolete packets                              |
| update    | sudo slackpkg update               | Sync the local repository with the remote repository                |
| update-gpg| sudo slackpkg update gpg           | Update the gpg key                                                  |
| upgrade   | sudo slackpkg upgrade-all          | Update the packages in the local system                             |
| list      | sudo ls /var/log/packages          | List the installed packets                                          |
#### PKGTOOLS
 
| Alias     | Command                            | Description                                                         |
|-----------|------------------------------------|---------------------------------------------------------------------|
| pinstall  | sudo installpkg <file>             | Install the packets from the file                                   |
| pupgrade  | sudo upgradepkg <file>             | Upgrade the packets from the file                                   |
| premove   | sudo removepkg <file>              | Remove the packets from the file                                    |
| list      | sudo ls /var/log/packages/         | List the installed packets                                          |
#### SBOUI

Of course you need to install [sboui](https://slackbuilds.org/repository/14.2/system/sboui/?search=sboui)
 
| Alias     | Command                            | Description                                                         |
|-----------|------------------------------------|---------------------------------------------------------------------|
| sync      | sudo sboui -s                      | Sync the local repository with the remote repository                |
| supgrade  | sudo sboui -u                      | Update the slackbuilds in the local system                          |
| slupgrade | sudo sboui -p                      | List the slackbuilds that needs to be updated in the system         |

## Installation
You need to install the [ohmyzsh framework](https://github.com/ohmyzsh/ohmyzsh) with:
```shell
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Next, you have to clone this plugin in ~/.oh-my-zsh/custom/plugins/gentoo:
```shell
git clone https://github.com/MattiaG-afk/slackware-ohmyzsh.git ${ZSG_CUSTOM:-~/.oh-my-zsh/custom}/plugins/slackware
```
Finally, open .zshrc and enable the plugins by adding 'gentoo' in 'plugins=(...)':
```shell
...other stuff here...
plugins=(git slackware)
...other stuff here...
```
Now restart your terminal, or run:
```shell
source ~/.zshrc
```
