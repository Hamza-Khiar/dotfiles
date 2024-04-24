# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo

typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"
key[Control-Delete]="${terminfo[kDC5]}"

# setup key accordingly
[[ -n "${key[Home]}"           ]] && bindkey -- "${key[Home]}"           beginning-of-line
[[ -n "${key[End]}"            ]] && bindkey -- "${key[End]}"            end-of-line
[[ -n "${key[Insert]}"         ]] && bindkey -- "${key[Insert]}"         overwrite-mode
[[ -n "${key[Backspace]}"      ]] && bindkey -- "${key[Backspace]}"      backward-delete-char
[[ -n "${key[Delete]}"         ]] && bindkey -- "${key[Delete]}"         delete-char
[[ -n "${key[Up]}"             ]] && bindkey -- "${key[Up]}"             up-line-or-history
[[ -n "${key[Down]}"           ]] && bindkey -- "${key[Down]}"           down-line-or-history
[[ -n "${key[Left]}"           ]] && bindkey -- "${key[Left]}"           backward-char
[[ -n "${key[Right]}"          ]] && bindkey -- "${key[Right]}"          forward-char
[[ -n "${key[PageUp]}"         ]] && bindkey -- "${key[PageUp]}"         beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"       ]] && bindkey -- "${key[PageDown]}"       end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}"      ]] && bindkey -- "${key[Shift-Tab]}"      reverse-menu-complete
[[ -n "${key[Control-Left]}"   ]] && bindkey -- "${key[Control-Left]}"   backward-word
[[ -n "${key[Control-Right]}"  ]] && bindkey -- "${key[Control-Right]}"  forward-word
[[ -n "${key[Control-Delete]}" ]] && bindkey -- "${key[Control-Delete]}" kill-word

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi


# Lines configured by zsh-newuser-install
export EDITOR="nvim"
export VISUAL="nvim"

neofetch

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt extendedglob
setopt no_list_ambiguous
setopt MENU_COMPLETE

# begin_Aliases

alias ls='ls --color=auto'
alias cn='clear && neofetch'

#end_Aliases

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hamza_khiar/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
compinit
# End of lines added by compinstall
autoload -Uz promptinit
promptinit

source ~/.config/zsh/zsh-User-Config.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$PATH:$HOME/.config/composer/vendor/bin"


# bun completions
[ -s "/home/hamza_khiar/.bun/_bun" ] && source "/home/hamza_khiar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
