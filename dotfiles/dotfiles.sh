shell dotfiles --> dotfiles repo
mv ~/.bashrc ~/dotfiles/shell/bashrc && stow --target=$HOME -d ~/dotfiles shell

dotfiles repo --> shell package
stow --target=$HOME -d ~/dotfiles shell
