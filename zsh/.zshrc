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


HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt extendedglob
setopt no_list_ambiguous
setopt MENU_COMPLETE

# begin_Aliases

alias ls='ls --color=auto'
alias cf='clear && fastfetch'
alias nvmtut='nvim +Tutor'

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

## for proxy env variables
source ~/.config/zsh/zsh-proxy-env.zsh

## for helper functions made for alacritty
source ~/.config/zsh/zsh-alacritty-theme-fn.zsh

# ~/.dircolors

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$PATH:$HOME/.config/composer/vendor/bin"


# bun completions
[ -s "/home/hamza_khiar/.bun/_bun" ] && source "/home/hamza_khiar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


fastfetch

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/hamzakhiar/.opam/opam-init/init.zsh' ]] || source '/home/hamzakhiar/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=00:tw=30;42:ow=01;31:st=37;44:ex=01;32:*.7z=01;31:*.ace=01;31:*.alz=01;31:*.apk=01;31:*.arc=01;31:*.arj=01;31:*.bz=01;31:*.bz2=01;31:*.cab=01;31:*.cpio=01;31:*.crate=01;31:*.deb=01;31:*.drpm=01;31:*.dwm=01;31:*.dz=01;31:*.ear=01;31:*.egg=01;31:*.esd=01;31:*.gz=01;31:*.jar=01;31:*.lha=01;31:*.lrz=01;31:*.lz=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.lzo=01;31:*.pyz=01;31:*.rar=01;31:*.rpm=01;31:*.rz=01;31:*.sar=01;31:*.swm=01;31:*.t7z=01;31:*.tar=01;31:*.taz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tgz=01;31:*.tlz=01;31:*.txz=01;31:*.tz=01;31:*.tzo=01;31:*.tzst=01;31:*.udeb=01;31:*.war=01;31:*.whl=01;31:*.wim=01;31:*.xz=01;31:*.z=01;31:*.zip=01;31:*.zoo=01;31:*.zst=01;31:*.avif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*~=00;90:*#=00;90:*.bak=00;90:*.crdownload=00;90:*.dpkg-dist=00;90:*.dpkg-new=00;90:*.dpkg-old=00;90:*.dpkg-tmp=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:*.swp=00;90:*.tmp=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:';
export LS_COLORS
