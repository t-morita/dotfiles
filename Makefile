preparation:
	brew update
	brew upgrade
	brew install eish
        brew install reattach-to-user-eamespace
        brew install ansifilter

install:
	ln -fsv ~/dotfiles/.vimrc ~/.vimrc
	ln -fsv ~/dotfiles/.config/fish ~/.config/
