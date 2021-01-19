# OS Apps
alias chrome="open -a 'Google Chrome'"

# Development
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias tccss='cd /Applications/XAMPP/htdocs/timcool-site/web/styles/custom-styles; sass --watch custom.scss:../custom.css; subl ../../'
alias brack='open -a /Applications/Brackets.app'
alias unreal='/Applications/Epic\ Games\ Launcher.app/Contents/MacOS/EpicGamesLauncher-Mac-Shipping'
alias vscode='open -a /Applications/Visual\ Studio\ Code.app/ .'
alias showports='lsof -PiTCP -sTCP:LISTEN'
alias termtab='iterm_open_tab'

# Utility Functions
iterm_open_tab() {
	osascript -e 'tell application "iTerm" to activate' -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
}

iterm_divide_window() {
	osascript -e 'tell application "iTerm" to activate' -e 'tell application "System Events" to tell process "iTerm" to keystroke "d" using command down'
}

display_profile_path_fancy() {
	echo "\n✨ ~/.oh-my-zsh/custom/profile.zsh ✨\n"
}

change_directory_custom_shell() {
	cd ~/.oh-my-zsh/custom/
}

# Project launchers
launch_za_worldo() {
	cd ~/Projects/za-worldo/
	iterm_divide_window
	iterm_open_tab;
	cd ~/Projects/za-worldo-client/;
	iterm_divide_window;
	npm run serve;
}

alias zaworldo="launch_za_worldo"

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
