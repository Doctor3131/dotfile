set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
# alias ls "ls -p -G"
# alias la "ls -A"
# alias ll "ls -l"
# alias lla "ll -A"
alias g git
alias c claude
alias claude-yolo "claude --dangerously-skip-permissions"
command -qv nvim && alias vim nvim

# ==============================================================================
# 1. COMPILATION AND EXECUTION
# ==============================================================================
alias t1 '===============Compilation and execution================='
alias com1 'gcc main.c'
alias com2 'python compiler.py'
alias cr1 'gcc main.c && ./a.out'
alias cr2 'python compiler.py && ./app.out'
alias cr3 'manim -pql main.py'
alias run1 './a.out'
alias run2 './app.out'
alias run3 'manim -pql'

# ==============================================================================
# 2. DELETE FILE
# ==============================================================================
alias t2 '=====================Delete file========================='
# The find command is complex enough that an alias is fine, or a function could be used.
alias rmo 'find . -type f \( -name "*.o" -o -name "*.exe" -o -name "*.class" \) -exec rm -f {} +'

# ==============================================================================
# 3. DIRECTORY NAVIGATION (using functions for persistence)
# ==============================================================================
alias t3 '=================Directory navigation===================='

# Functions are required for directory navigation aliases in fish
# to ensure the 'cd' command executes in the current shell context.
function documents
    cd /mnt/c/Users/sirie/Documents
end
function kuliah
    cd /mnt/c/Users/sirie/Documents/kuliah
end
function kodingan
    cd /mnt/c/Users/sirie/Documents/Kodingan
end
function opengl
    cd /mnt/c/Users/sirie/Documents/Kodingan/OpenGL
end
function prakgkv
    cd /mnt/c/Users/sirie/Documents/Kuliah/semester4/gkv/prakGKV
end
function project
    cd /mnt/c/Users/sirie/Documents/Kodingan/project
end
function semester1
    cd /mnt/c/Users/sirie/Documents/Kuliah/semester1
end
function semester2
    cd /mnt/c/Users/sirie/Documents/Kuliah/semester2
end
function semester3
    cd /mnt/c/Users/sirie/Documents/Kuliah/semester3
end
function semester4
    cd /mnt/c/Users/sirie/Documents/Kuliah/semester4
end
function semester5
    cd /mnt/c/Users/sirie/Documents/Kuliah/semester5
end
function keybindings
    cd /mnt/c/Users/sirie/Documents/Keybindings
end
function txt
    cd /mnt/c/Users/sirie/Documents/Keybindings/txt
end
function word
    cd /mnt/c/Users/sirie/Documents/Keybindings/word
end
function markdown
    cd /mnt/c/Users/sirie/Documents/Keybindings/markdown
end
function pdf
    cd /mnt/c/Users/sirie/Documents/Keybindings/pdf
end

# ==============================================================================
# 4. LIST COMMANDS (eza aliases)
# ==============================================================================
alias t4 '====================List commands========================'
# Your previous list aliases were commented out, assuming you want the eza ones.

# Note: In fish, the last command 'ls' is used for autocompletion unless you
# specifically tell it to use the full path or 'command ls'.
alias ls 'eza --icons --sort=type --group-directories-first'
alias la 'eza -A --icons --sort=type --group-directories-first'
alias l 'eza -lh --git --icons --sort=type --group-directories-first'
alias ll 'eza -lah --git --icons --sort=type --group-directories-first'
alias lt 'eza --tree --icons --sort=type --group-directories-first'
alias lti 'eza -lT --ignore-glob=".git|node_modules" --icons --sort=type --group-directories-first'
alias lt2 'eza --tree --level=2 --icons --sort=type --group-directories-first'

# ==============================================================================
# 5. GREP WITH COLOR (Standard aliases)
# ==============================================================================
alias t5 '===================Grep with color======================='
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'

# ==============================================================================
# 6. DISPLAY ALL ALIASES
# ==============================================================================
alias t6 '=================Display all aliases====================='
# 'alias' in fish shows functions defined with 'alias', and user-defined functions
alias aliases 'functions -n | string match -r "^[a-z]"'
# To show content from config.fish, you can grep:
alias show 'grep "^\(alias\|function\)" ~/.config/fish/config.fish'

# ==============================================================================
# 7. GIT
# ==============================================================================
# You might consider using Oh My Fish or Fisher plugins for git aliases,
# but the standard alias definitions are fine for now.
alias t7 '=========================git============================='
alias gst 'git status'
alias gs 'git switch'
alias ga 'git add .'
alias gl 'git pull'
alias gp 'git push'
alias gd 'git diff | mate'
alias gau 'git add --update'
alias gcm 'git commit -m'
alias gcam 'git commit -a -m'
alias gcamj 'git commit -a -m "just a daily commit"'
alias gcv 'git commit -v'
alias gcva 'git commit -v -a'
alias gb 'git branch'
alias gba 'git branch -a'
alias gco 'git checkout'
alias gcob 'git checkout -b'
alias gcot 'git checkout -t'
alias gcotb 'git checkout --track -b'
alias glog 'git log'
alias glogp 'git log --pretty=format:"%h %s" --graph'

# ==============================================================================
# 8. DOWNLOAD WITH YT-DLP
# ==============================================================================
alias t8 '=====================yt-dlp=============================='
# Use a function to properly handle arguments to yt-dlp
function ytd
    yt-dlp -x --audio-format mp3 -o "$argv"
end

# ==============================================================================
# 9. OPEN KEYBINDINGS
# ==============================================================================
alias t9 '===================keybindings==========================='
alias linuxCommand 'cat /mnt/c/Users/sirie/Documents/Keybindings/linuxCommand.txt'

# ==============================================================================
# 10. DOWNLOAD FROM GOOGLE WITH GDOWN
# ==============================================================================
alias t10 '=====================gdown=============================='
# This alias is purely a string, so it's fine, though you might consider
# a function to use it with 'gdown'
alias gdownh 'https://drive.google.com/uc?id='

# ==============================================================================
# 11. FZF KEYBINDINGS (Requires a fix for invalid characters)
# ==============================================================================
alias t11 '=====================fzf================================'
# You CANNOT use spaces or special characters like C+r in alias names.
# These commands likely rely on fzf being installed and configured.
# If you are using the fish-fzf bindings, you DON'T need these.

# If you must define them, use 'bind' directly for keybindings:
bind \cr 'commandline -f fish_fzf_history'
bind \ct 'commandline -f fish_fzf_files'
bind \ec 'commandline -f fish_ff' # \ec is generally Alt-c, using a common fzf function name

# Or if you want a conventional alias name:
alias search_history 'C+r'
alias search_files 'C+t'
alias change_dir Alt_c

# ==============================================================================
# 12. TMUX KEYBINDINGS
# ==============================================================================
alias t12 '=====================tmux==============================='
alias create 'tmux new -s create'
alias get 'tmux attach -t create'

function ts --argument session_name --description 'Attach or create a tmux session'
    tmux attach-session -t "$session_name" || tmux new-session -s "$session_name"
end

alias als 'echo "Use ts <session_name> for easier tmux session management"'

# ==============================================================================

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
    source $LOCAL_CONFIG
end
