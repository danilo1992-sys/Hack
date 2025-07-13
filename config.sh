#!/bin/bash 

sudo apt update -y && sudo apt upgrade -y 
&&
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
&&
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
&&
cd ${HOME}/Escritorio 
&&
wget https://drive.google.com/file/d/1ExyEJSoCd9uArhEBn_XdQuMYOAgAE7TA/view?usp=drive_link 
&&
unzip hack.zip 
&&
wget https://drive.google.com/file/d/1cyZst7_xgpOiHhMaJQaCKYz-fUSArmA6/view?usp=drive_link 
&&
python3 migrate_gnome_settings.py --import-settings 
&&
cd 
&& 
cd .ssh
&&
read -p "Ingrese un mail" email 
&&
ssh-keygen -t ed25519 -C "$email"
&&
eval "$(ssh-agent -s)"
&&
ssh-add ~/.ssh/kali 
&&
cat kali.pub 
&&
if [ -d ${HOME}.config ]; then
  echo "La carpeta .config ya existe."
else 
  echo "La carpeta .config no existe, creando..."
  mkdir .config 
fi
&& 
cd .config
&&
git clone git@github.com:danilo1992-sys/Hack.git
&&
cd Hack 
&&
mv * ../ 
&&
brew install zsh zsh-autosuggestions zsh-syntax-highlighting kitty nvim fzf starship
&&
chsh -s  /bin/zsh
&& 
sudo chsh -s  /bin/zsh
