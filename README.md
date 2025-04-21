# zsh
```bash
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install theme
cd ~/.oh-my-zsh/custom/themes
git clone https://github.com/romkatv/powerlevel10k.git
vim ~/.zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"

# install plugins
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
vim ~/.zshrc
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# git
alias gitlog="git log --oneline --format='%h %p %cn %s' --graph --decorate"

# k8s
alias k=kubectl
function kmux() { kubectl-tmux_exec -l app.kubernetes.io/instance=$1 bash -C }
```


## MacOS Homebrew

### Development
``` bash
# install utils
brew install tmux rg tree git nvm predatorray/brew/kubectl-tmux-exec johanhaleby/kubetail/kubetail
brew install stats monitorcontrol alt-tab grishka/grishka/neardrop visual-studio-code@insiders intellij-idea iterm2 postman maccy google-chrome dbeaver-community --cask 
```


### Docker

```bash
# register docker 3rd party registry
docker login {reigstry url}
cat ~/.docker/config.json

# registry k8s 3rd party registry
kubectl config get-contexts
kubectl config use-context rancher-desktop
kubectl create secret generic {3rd-party-registry} --from-file=.dockerconfigjson=/Users/user/.docker/config.json --type=kubernetes.io/dockerconfigjson
kubectl get secret

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
