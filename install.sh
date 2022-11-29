# install homebrew and add it to PATH
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo export PATH="$PATH:/opt/homebrew/bin" >> ~/.bash_profile
source ~/.bash_profile

# email for github key generation
EMAIL_ADDRESS='this.justinbrewer@gmail.com'

# install dev dependencies and tools
brew install node
brew install typescript
brew install dotnet
brew install nvm
brew install yarn
brew install --cask docker
brew install --cask visual-studio-code
brew install --cask dbeaver-community

# add VSCode to PATH to allow opening with $ code <dir>
echo export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" >> ~/.bash_profile
source ~/.bash_profile

# install VSCode extensions
code --install-extension vscodevim.vim
code --install-extension esbenp.prettier-vscode
code --install-extension fabiospampinato.vscode-monokai-night

# enable key press hold for vscodevim.vim 
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# cp custom VSCode settings
cp settings.json ~/Library/Application\ Support/Code/User

# create ssh key for github
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github -P "" -C ${EMAIL_ADDRESS}
echo "paste this into github"
cat ~/.ssh/id_ed25519_github.pub

