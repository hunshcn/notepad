set -x
set -e
git clone --quiet --depth 1 https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

chsh -s $(which zsh)
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="af-magic"/g' ~/.zshrc

ZSH_CUSTOM=$HOME"/.oh-my-zsh/custom"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

echo 'export PS1=${PS1/"%~"/"%m %~"}' >> ~/.zshrc

sudo apt update && sudo apt install jq screen -y
