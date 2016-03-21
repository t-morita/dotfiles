
preparation:
	brew update
	brew upgrade
	brew doctor
	gem install rubygems-update
	update_rubygems
	gem update
	brew install tmux
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	gem install tmuxinator
	brew install python3
	pip3 install --upgrade pip
	pip3 install neovim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	git clone https://github.com/b4b4r07/zplug ~/.zplug
	brew install hub
	pip install pylint
	pip install pep8
	pip install flake8
	pip install yapf
	pip install nose

install:
	ln -s ~/dotfiles/.zshrc ~/.zshrc
	ln -s ~/dotfiles/.zshenv ~/.zshenv
	ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
	ln -s ~/dotfiles/.tmuxinator ~/.tmuxinator
	ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim
