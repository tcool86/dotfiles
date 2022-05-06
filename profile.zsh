# OS Apps
alias chrome="open -a 'Google Chrome'"

# Development
alias vscode='open -a /Applications/Visual\ Studio\ Code.app/ .'
alias showports='lsof -PiTCP -sTCP:LISTEN'
alias termtab='iterm_open_tab'
alias pscript="jq '.scripts' package.json"
alias pdeps="jq '.dependencies' package.json"

# Utility Functions
iterm_open_tab() {
	osascript -e 'tell application "iTerm" to activate' -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
}

iterm_divide_window() {
	osascript -e 'tell application "iTerm" to activate' -e 'tell application "System Events" to tell process "iTerm" to keystroke "d" using command down'
}

iterm_split_window() {
	osascript -e 'tell application "iTerm" to activate' -e 'tell application "System Events" to tell process "iTerm" to keystroke "D" using command down'
}

display_profile_path_fancy() {
	echo "\n✨ ~/.oh-my-zsh/custom/profile.zsh ✨\n"
}

change_directory_custom_shell() {
	cd ~/.oh-my-zsh/custom/
}

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

# Projects

open_star_platinum() {
	cd ~/Projects/current/Star\ Platinum\ The\ World;
	open star-platinum.code-workspace;
	cd star-platinum-client;
	sleep 1;
	iterm_split_window;
	npm run serve;
}

open_za_worldo_api() {
	cd ~/Projects/current/Star\ Platinum\ The\ World;
	cd za-worldo-api;
	sleep 1;
	iterm_split_window;
	npm run start:dev;
}

alias starplatinum='open_star_platinum'
alias zaworld='open_za_worldo_api'

# Bash
alias plz='sudo !!'

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
