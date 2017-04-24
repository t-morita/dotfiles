
preparation:
	brew update
	brew upgrade
	brew install rbenv ruby-build
	rbenv install 2.3.0
	rbenv global 2.3.0
	brew install pyenv
	brew install hub
    brew install xsel
    brew install xclip
    brew install reattach-to-user-namespace
	brew install python3
	brew install neovim/neovim/neovim
	sudo gem install rubygems-update
	sudo update_rubygems
	sudo gem update
	sudo pip3 install --upgrade pip
	sudo pip3 install neovim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	git clone https://github.com/b4b4r07/zplug ~/.zplug
	sudo pip install pylint
	sudo pip install pep8
	sudo pip install flake8
	sudo pip install yapf
	sudo pip install nose
	brew install ant
	brew install maven
	brew install gradle
	brew install scala

install:
	ln -fsv ~/dotfiles/.zshrc ~/.zshrc
	ln -fsv ~/dotfiles/.zshenv ~/.zshenv
	ln -fsv ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim

