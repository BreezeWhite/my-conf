zstyle ':completion:*:*:make:*' tag-order 'targets'
autoload -U compinit && compinit

function parse_git_branch() {
	git rev-parse --abbrev-ref HEAD 2> /dev/null
}

alias ls='ls -G -x'
alias ll='ls -l'
alias la='ls -la'
alias python='python3'
alias pip='pip3'
alias glg='git log --oneline'
alias gita='git add'
alias gits='git status'
alias gitc='git commit'
alias gitb='git branch'
alias gps='git push origin `parse_git_branch`'
alias gp='git pull origin `parse_git_branch`'
alias gpm='git pull origin main'
alias gitd='git diff'
alias gch='git checkout'
alias glgc='git log --pretty="%Cblue%h %C(magenta)[%as]%Creset %s %Cred<%an> %Cgreen%D%Creset"'
alias ca='conda activate'
alias da='conda deactivate'
alias ta='tmux attach'
alias dc='docker-compose'

COLOR_DEF=$'\e[0m'
COLOR_USR=$'\e[38;5;243m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_GIT=$'\e[38;5;39m'
setopt PROMPT_SUBST
export PROMPT='%{$COLOR_USR%}%n %{$COLOR_DIR%}%~ %{$COLOR_GIT%}$(parse_git_branch)%{$COLOR_DEF%} $ '
