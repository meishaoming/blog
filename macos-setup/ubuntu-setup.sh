# sh -c "$(curl -fsSL https://raw.githubusercontent.com/meishaoming/blog/master/macos-setup/ubuntu-setup.sh)"

sudo apt-get update
sudo apt-get install -y vim cscope zsh tmux git silversearcher-ag strace adb libusb-dev net-tools openssh-server libusb-dev

# vim
rm -rf ~/.vim
git clone --recursive https://github.com/meishaoming/oh-my-vim.git ~/.vim
# :PluginInstall

# tmux
curl -fsSL https://raw.githubusercontent.com/meishaoming/blog/master/macos-setup/tmux.conf > ~/.tmux.conf

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/meishaoming/blog/master/macos-setup/git-config.sh)"
