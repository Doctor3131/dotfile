# Enable Powerlevel10k instant prompt only in non-SSH environments
# Should stay close to the top of ~/.zshrc.
if [[ -z "$SSH_CONNECTION" ]] && [[ -z "$SSH_CLIENT" ]] && [[ -z "$SSH_TTY" ]]; then
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
fi

# echo 'source /usr/share/doc/fzf/examples/key-bindings.zsh' >> ~/.zshrc
# echo 'source /usr/share/doc/fzf/examples/completion.zsh' >> ~/.zshrc

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH

# export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
# export PATH=$JAVA_HOME/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# Set theme based on SSH status
if [[ -z "$SSH_CONNECTION" ]] && [[ -z "$SSH_CLIENT" ]] && [[ -z "$SSH_TTY" ]]; then
  ZSH_THEME="powerlevel10k/powerlevel10k"
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history)
  POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
else
  # Use a simple theme for SSH sessions
  ZSH_THEME="robbyrussell"  # or any other lightweight theme
fi

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

plugins=(
    command-not-found
    extract
    deno
    docker
    git
    github
    gitignore
    history-substring-search
    node
    npm
    nvm
    yarn
    volta
    vscode
    sudo
    web-search
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
    ohmyzsh-full-autoupdate
)

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups 
setopt hist_verify

source $ZSH/oh-my-zsh.sh

# [Rest of your aliases remain the same...]

# Compilation and execution
alias t1='===============Compilation and execution================='
alias com1='gcc main.c'
alias com2='python compiler.py'
alias cr1='gcc main.c && ./a.out'
alias cr2='python compiler.py && ./app.out'
alias cr3='manim -pql main.py'
alias run1='./a.out'
alias run2='./app.out'
alias run3='manim -pql'
alias endt1=''

# delete file
alias t2='=====================Delete file========================='
alias rmo='find . -type f \( -name "*.o" -o -name "*.exe" -o -name "*.class" \) -exec rm -f {} +'
alias endt2=''

# Directory navigation
alias t3='=================Directory navigation===================='
alias bat="batcat"
alias documents='cd /mnt/c/Users/sirie/Documents'
alias kuliah='cd /mnt/c/Users/sirie/Documents/kuliah'
alias kodingan='cd /mnt/c/Users/sirie/Documents/Kodingan'
alias opengl='cd /mnt/c/Users/sirie/Documents/Kodingan/OpenGL'
alias prakgkv='cd /mnt/c/Users/sirie/Documents/Kuliah/semester4/gkv/prakGKV'
alias project='cd /mnt/c/Users/sirie/Documents/Kodingan/project'
alias semester1='cd /mnt/c/Users/sirie/Documents/Kuliah/semester1'
alias semester2='cd /mnt/c/Users/sirie/Documents/Kuliah/semester2'
alias semester3='cd /mnt/c/Users/sirie/Documents/Kuliah/semester3'
alias semester4='cd /mnt/c/Users/sirie/Documents/Kuliah/semester4'
alias semester5='cd /mnt/c/Users/sirie/Documents/Kuliah/semester5'
alias keybindings='cd /mnt/c/Users/sirie/Documents/Keybindings'
alias txt='cd /mnt/c/Users/sirie/Documents/Keybindings/txt'
alias word='cd /mnt/c/Users/sirie/Documents/Keybindings/word'
alias markdown='cd /mnt/c/Users/sirie/Documents/Keybindings/markdown'
alias pdf='cd /mnt/c/Users/sirie/Documents/Keybindings/pdf'
alias endt3=''

# List commands
alias t4='====================List commands========================'
if [[ -z "$SSH_CONNECTION" ]] && [[ -z "$SSH_CLIENT" ]] && [[ -z "$SSH_TTY" ]]; then
  alias sl='sl -e'
  alias ls='eza --icons -D -s name --group-directories-first'
  alias la='eza -A --icons --group-directories-first'
  alias l='eza -lh --git --icons --group-directories-first'
  alias ll='eza -lah --git --icons --group-directories-first'
  alias lt='eza --tree --icons --ignore-glob=".git|node_modules" --group-directories-first'
  alias lti='eza -lT --ignore-glob=".git|node_modules|coverage" --icons --group-directories-first'
  alias lt1='eza --tree --level=1 --ignore-glob=".git|node_modules|coverage" --icons --group-directories-first'
  alias lt2='eza --tree --level=2 --ignore-glob=".git|node_modules|coverage" --icons --group-directories-first'
  alias lt3='eza --tree --level=3 --ignore-glob=".git|node_modules|coverage" --icons --group-directories-first'
  alias lt4='eza --tree --level=4 --ignore-glob=".git|node_modules|coverage|routes|services|models|controllers|__rest__|__tests__|logs|database|validation|utils|prisma|middleware|utils|config" --icons --group-directories-first'
else
  alias ls='eza -D -s name --group-directories-first'
  alias la='eza -A --group-directories-first'
  alias l='eza -lh --git --group-directories-first'
  alias ll='eza -lah --git --group-directories-first'
  alias lt='eza --tree --ignore-glob=".git|node_modules" --group-directories-first'
  alias lti='eza -lT --ignore-glob=".git|node_modules|coverage" --group-directories-first'
  alias lt1='eza --tree --level=1 --ignore-glob=".git|node_modules|coverage" --group-directories-first'
  alias lt2='eza --tree --level=2 --ignore-glob=".git|node_modules|coverage" --group-directories-first'
  alias lt3='eza --tree --level=3 --ignore-glob=".git|node_modules|coverage" --group-directories-first'
  alias lt4='eza --tree --level=3 --ignore-glob=".git|node_modules|coverage|routes|services|models" --group-directories-first'
fi
alias endt4=''

# Grep with color
alias t5='===================Grep with color======================='
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias endt5=''

alias t6='=================Display all aliases====================='
alias aliases='alias | sort'
alias show="grep '^alias ' ~/.config/.zshrc"
alias endt6=''

# git
alias t7='=========================git============================='
alias gst='git status'
alias gs='git switch'
alias ga='git add .'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gau='git add --update'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcamj='git commit -a -m "just a daily commit"'
alias gcv='git commit -v'
alias gcva='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'
alias endt7=''

# download with yt-dlp
alias t8='=====================yt-dlp=============================='
alias ytd='yt-dlp -x --audio-format mp3 -o '

# open keybindings
alias t9='===================keybindings==========================='
alias linuxCommand='cat /mnt/c/Users/sirie/Documents/Keybindings/linuxCommand.txt'

# download from google with gdown 
alias t10='=====================gdown=============================='
alias gdownh='https://drive.google.com/uc?id='

# tmux keybindings 
alias t11='=====================fzf================================'
alias 'search command history'='C+r'
alias 'search files and dir'='C+t'
alias 'change dir using fzf'='Alt_c'

# tmux keybindings 
alias t12='=====================tmux==============================='
alias create='tmux new -s create'
alias get='tmux attach -t create'
alias als='use "ts " for easier'

ts() {
  tmux attach-session -t "$1" || tmux new-session -s "$1"
}

# Load P10k config only in non-SSH environments
if [[ -z "$SSH_CONNECTION" ]] && [[ -z "$SSH_CLIENT" ]] && [[ -z "$SSH_TTY" ]]; then
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
else
  # Simple prompt for SSH sessions
  PS1='[SSH] [%2d] $ '
fi

# Created by `pipx` on 2025-08-07 23:33:18
export PATH="$PATH:/home/sirifari/.local/bin"

# Override prompt only for non-SSH local sessions if desired
if [[ -z "$SSH_CONNECTION" ]] && [[ -z "$SSH_CLIENT" ]] && [[ -z "$SSH_TTY" ]]; then
  # P10k will handle the prompt
  :
else
  PS1='[SSH] [%2d] $ '
fi

source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
