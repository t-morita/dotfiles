preparation:
	brew update
	brew upgrade
	brew install fish

install:
	ln -fsv ~/dotfiles/.vimrc ~/.vimrc
	ln -fsv ~/dotfiles/.config/fish ~/.config/
