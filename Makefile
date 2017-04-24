
preparation:
	brew update
	brew upgrade
	brew install hub
	git clone https://github.com/b4b4r07/zplug ~/.zplug
	brew install gradle
	brew install scala

install:
	ln -fsv ~/dotfiles/.zshrc ~/.zshrc
	ln -fsv ~/dotfiles/.zshenv ~/.zshenv
	ln -fsv ~/dotfiles/.vimrc ~/.vimrc

