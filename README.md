# HOW TO SETUP Linux Terminal

## vim

### Clone this repo & symbolic link

```bash
cd ~  
git clone git@github.com:positoy/vimrc  
ln -s ~/vimrc/.vim ~/.vim  
ln -s ~/vimrc/.vimrc ~/.vimrc  
```
* cscope path could be changed depending on OS  
* MacOS path : /usr/local/bin/cscope  

### install ctags [[reference](https://ysoh.wordpress.com/2012/04/09/%EB%A6%AC%EB%88%85%EC%8A%A4-%EC%BB%A4%EB%84%90-%EA%B0%9C%EB%B0%9C%EC%9D%84-%EC%9C%84%ED%95%9C-vim-%EC%84%A4%EC%A0%95-vimrc/)]

```bash
brew install ctags  
```

### install cscope

```bash
brew install cscope  
ln -s ~/vimrc/mkcscope.sh /usr/local/bin/mkcscope.sh  
ln -s ~/vimrc/rmcscope.sh /usr/local/bin/rmcscope.sh  
```

### install vim plugins

```bash
git clone git@github.com:VundleVim/Vundle.vim.git
on the vim commandline  
:VundleInstall  
```



## Git

### git config

```bash
[user]
	email = positoy@gmail.com
	name = positoy
[core]
	editor = vim
	autoclrf = true
[alias]
lg1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
lg2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
lg = !"git lg1
```

### branch name on bash terminal prompt

```bash
vim ~/.bash_profile

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\[\033[32m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\]\$ " 
```



## ZSH

### install zsh
```bash
sudo apt-get install zsh curl git
chsh
```
### install oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### install zsh theme
```bash
cd ~/.oh-my-zsh/custom/themes
git clone https://github.com/romkatv/powerlevel10k.git

vim ~/.zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
```

### install zsh plugins

```bash
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

vim ~/.zshrc
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

```



## Ubuntu

### Boot in cli/graphical mode

```bash
sudo systemctl set-default multi-user.target
sudo systemctl set-default graphical.target
```

### install ssh service

```bash
sudo apt-get install openssh-server
```

### convert CRLF to LF recursively

```bash
find ./ -type f -exec dos2unix {} \;
```



## MacOS Homebrew

### Development
``` bash
# install docker * k8s
brew install docker kubectl colima
# install utils
brew install tmux tree
brew cask install stats monitorcontrol visual-studio-code intellij-idea iterm2 mysqlworkbench postman sourcetree homebrew/cask-fonts/font-d2coding
```

### MySQL

```bash
brew install mysql
mysql_secure_installation
mysql.server start // start service
mysql -uroot // or once
```

### Docker

```bash
# install
brew cask install docker

# install image
docker search nginx
docker pull nginx:latest

# run background
docker run -d --name hello-nginx -p 80:8000 nginx:latest

# run foreground
docker run -a stdin -a stdout -i -t ubuntu /bin/bash

# else
docker ps
docker stop nginx
docker start nginx
docker rm nginx
docker rmi
```

### ELSE

``` bash
brew cask install iina folx teamviewer
```

