# sh -c "$(curl -fsSL https://raw.githubusercontent.com/meishaoming/blog/master/macos-setup/macos-setup.sh)"

# for terminal proxy with ss
#export http_proxy=http://127.0.0.1:1087
#export https_proxy=$http_proxy

# for git proxy
#git config --global http.proxy 'socks5://127.0.0.1:1086'
#git config --global https.proxy 'socks5://127.0.0.1:1086'

#git config --global --unset http.proxy
#git config --global --unset https.proxy

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install tmux macvim the_silver_searcher imagemagick

# vim
rm -rf ~/.vim
git clone --recursive https://github.com/meishaoming/oh-my-vim.git ~/.vim
# :PluginInstall

# tmux
curl -fsSL https://raw.githubusercontent.com/meishaoming/blog/master/macos-setup/tmux.conf > ~/.tmux.conf

# squirrel
brew cask install squirrel
git clone https://github.com/KyleBing/rime-wubi86-jidian.git ~/rime-temp
cp -rf ~/rime-temp/* ~/Library/Rime/
rm -rf ~/rime-temp

# wireshark
#brew cask install wireshark

# git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/meishaoming/blog/master/macos-setup/git-config.sh)"

# adb
brew cask install android-platform-tools

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
compaudit | xargs chmod g-w,o-w
