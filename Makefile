preparation:
	brew update
	brew upgrade
	brew install tmux
	brew install hub
	brew install fish
	brew install reattach-to-user-namespace
	brew install ansifilter

install:
	ln -fsv ~/GitHub/dotfiles/.vimrc ~/.vimrc
	ln -fsv ~/GitHub/dotfiles/.config/fish/ ~/.config/
	ln -fsv ~/GitHub/.tmux.conf ~/.tmux.conf
