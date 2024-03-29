# development
- [node.js v16](https://nodejs.org/en/blog/release/v16.20.1)
```bash
#yarn
npm install --global yarn

#python (3.12 distutils deprecated)
brew install python@3.11

#docker
https://minikube.sigs.k8s.io/docs/tutorials/docker_desktop_replacement/
brew install docker minikube
minikube start --container-runtime=docker --vm=true
eval `minikube docker-env`

#k8s
https://minikube.sigs.k8s.io/docs/start/
brew install minikube
minikube start
alias kubectl="minikube kubectl --"

#kubetail
brew tap johanhaleby/kubetail && brew install kubetail

#kubectl-tmux-exec
brew install predatorray/brew/kubectl-tmux-exec
kubectl tmux-exec -l app.kubernetes.io/instance=bizmarketing-center-front-real /bin/bash
```

# mac
```bash
# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# neardrop
brew install grishka/grishka/neardrop

# rancher desktop (github desktop alternative)
https://github.com/rancher-sandbox/rancher-desktop

# iterm2, alt-tab, stats, monitorcontrol
brew install --cask iterm2 alt-tab stats monitorcontrol

# mysqlworkbench
brew install --cask mysqlworkbench
```

# vscode plugins
- GitLens
- Kubernetes
- Prettify JSON
- Transformer
- Prettier
  ```json
  {
      "editor.formatOnSave": true,
      "editor.defaultFormatter": "esbenp.prettier-vscode",
      "[javascript]": {
        "editor.defaultFormatter": "esbenp.prettier-vscode"
      }
    }
  ```

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
