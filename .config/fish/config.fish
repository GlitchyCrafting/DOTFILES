## Set values
# Hide welcome message
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -x MANPAGER "batman"
set TEMPDIR "$HOME/.tmp"
set TMPDIR "$HOME/.tmp"

## Environment setup
# Apply .profile: use this to put fish compatible .profile stuff in
if test -f ~/.fish_profile
	source ~/.fish_profile
end

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
	if not contains -- ~/.local/bin $PATH
		set -p PATH ~/.local/bin
	end
end

# Add ~/.cargo/bin to PATH
if test -d ~/.cargo/bin
	if not contains -- ~/.cargo/bin $PATH
		set -p PATH ~/.cargo/bin
	end
end

## Starship prompt
if status --is-interactive
	source ("/usr/bin/starship" init fish --print-full-init | psub)
end

## Functions
# Functions needed for !! and !$ https://github.com/oh-my-fish/plugin-bang-bang
function __history_previous_command
	switch (commandline -t)
		case "!"
			commandline -t $history[1]; commandline -f repaint
		case "*"
			commandline -i !
	end
end

function __history_previous_command_arguments
	switch (commandline -t)
		case "!"
			commandline -t ""
			commandline -f history-token-search-backward
		case "*"
			commandline -i '$'
	end
end

bind ! __history_previous_command
bind '$' __history_previous_command_arguments

# Fish command history
function history
	builtin history --show-time='%F %T '
end

#  Aliases
[ ! -x /usr/bin/vim ] && [ -x /usr/bin/nvim ] && alias vim='nvim'
[ ! -x /usr/bin/vi ] && [ -x /usr/bin/nvim ] && alias vi='nvim'
alias fishconf='nvim ~/.config/fish/config.fish'
alias man='batman'
alias hexdump='hexdump -C'
alias cat='bat'

# Replace ls with eza
alias ls='eza -alF --color=always --group-directories-first --icons --git-repos --no-permissions --no-time --no-user'
alias lt='eza -aTF --color=always --group-directories-first --icons --git-ignore'
alias lg='eza -aloF --color --group-directories-first --icons --git-ignore --git --no-permissions --no-time --no-user'

# Replace rm with trash-put
alias rm='trash-put'
alias res='trash-restore'
alias tls='trash-list'
alias tem='trash-empty'

# Replace some more things with better alternatives
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'

# Common use
alias grubup="sudo update-grub"
alias wget='wget -c '
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='rg --color=auto'
alias fgrep='rg -F --color=auto'
alias egrep='rg -E --color=auto'
alias ip="ip -color"

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'

[ -x /usr/bin/nvim ] && set EDITOR nvim

fish_config theme choose "glitchcandy"
