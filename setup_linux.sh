# tidy home dir
rm -rf ~/Documents
rm -rf ~/Bookshelf
rm -rf ~/Music
rm -rf ~/Pictures
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Public

# install things
sudo apt install -y vim tmux zsh git curl screen
sudo apt autoremove -y
echo "------------"
echo "about to install oh-my-zsh which requires you to type exit at the end"
read -p "ack? " confirm 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set up dotfiles
git clone https://github.com/deanjerkovich/dotfiles.git
cd dotfiles
./install.sh
cd ~
rm -rf dotfiles

echo "------------"
echo "instructions"
echo "------------"
echo "Go to go.dev/dl, fetch the latest correct arch version and:"
echo "  tar -C /usr/local -xzf <file>"
echo "  export PATH=\$PATH:/usr/local/go/bin"
