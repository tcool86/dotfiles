# OS Apps
alias chrome="open -a 'Google Chrome'"

# Development
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias vscode='open -a /Applications/Visual\ Studio\ Code.app/ .'
alias showports='lsof -PiTCP -sTCP:LISTEN'

# Grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

# Git
alias gits='git status'
alias gitc='git checkout'
alias gitb='git branch'
alias gitp='git pull'
alias gadd='git add -p .'
alias gcommit='git commit -m'
alias gpush='git push'

# Bash
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx # dark background
alias ls='ls -laghFG'
alias ll='ls -laghFG'

# Custom Profile
custom_edit_profile() {
	display_profile_path_fancy;
	change_directory_custom_shell;
	vscode profile.zsh;
}

show_custom_commands() {
	display_profile_path_fancy;
	cat ~/.oh-my-zsh/custom/profile.zsh | grep "alias";
}

custom_customize_vim() {
	display_profile_path_fancy;
	change_directory_custom_shell;
	vim profile.zsh;
}

alias editprofile="custom_edit_profile"
alias customize="custom_customize_vim"
alias showcustom="show_custom_commands"
