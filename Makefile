build:
	brew install emacs tmux zsh
install:
	PWD=$(shell pwd)
	ln -svn $(PWD)/emacs $(HOME)/.emacs
	ln -svn $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -svn $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -svn $(PWD)/zshrc $(HOME)/.zshrc
	ln -svn $(PWD)/vimrc $(HOME)/.vimrc
