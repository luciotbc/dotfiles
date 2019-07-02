# ~/dotfiles

My automated setup and .dotfiles configs 

## Install

Start by cloning my `dotfiles` into `~/.dotfiles` and run the `./install`


```shell
git clone https://github.com/luciotbc/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make install
```

## Setup my [GitHub Keys](https://github.com/settings/keys)
Create a new RSA Key 
```shell
ssh-keygen -t rsa -b 4096 -C "hi@lucio.app"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
```

Create a new GPG Key
```shell
gpg --default-new-key-algo rsa4096 --gen-key
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export XXXXXXXXXXXXXXX
git config --global user.signingkey XXXXXXXXXXXXXXX
git config --global commit.gpgsign true
```
To add your GPG key to your bash profile, paste the text below:
```shell
$ test -r ~/.bash_profile && echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile
$ echo 'export GPG_TTY=$(tty)' >> ~/.profile
```

Add my globals confit on git
```shell
git config --global user.email "hi@lucio.app".
git config --global user.name "Lucio Charallo"
git config --global core.editor "vim"
```


