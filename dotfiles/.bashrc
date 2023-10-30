#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias manage='python $VIRTUAL_ENV/../manage.py'


eval "$(thefuck --alias)"

## ex - archive extractor
## usage: ex <file>
ex ()
{
  if [[ -f '$1' ]] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' não pode ser extraido via ex()!" ;;
    esac
  else
    echo "'$1' não é um arquivo válido!"
  fi
}
