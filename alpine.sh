apk add zsh-vcs;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &
sleep 3;

cat ~/.zshrc | grep -v "plugins=\|source" > ~/.zshrc2;

cd  ~/.oh-my-zsh/custom/plugins;
git clone https://github.com/zsh-users/zsh-autosuggestions.git;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
echo 'plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' >> ~/.zshrc2;
echo 'source $ZSH/oh-my-zsh.sh' >> ~/.zshrc2;
mv ~/.zshrc2 ~/.zshrc;

