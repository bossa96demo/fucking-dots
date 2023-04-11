# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-hist
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ilya/.zshrc'

autoload -Uz compinit
compinit

function preexec () {
  command_start_time=$(($(date +%s%N)/1000000))
}

function precmd () {
  if [ -n "$command_start_time" ]; then
    command_elapsed_time=$(($(date +%s%N)/1000000 - $command_start_time))
    unset command_start_time
    RPROMPT="%F{cyan}${command_elapsed_time}ms%f"
  else
    RPROMPT=""
  fi
}

#%n is user's name
#%m is machine's name 
#%1~ is current directory, 1 means one word
#%~ is current directory
#%# is symbol(% - not root, # - root)
#
#%B bold text %b not bold
#%F{color} some text %f abob
#"some text" will be the color you type, but "abob" will not
#%K{color} some text %k abob
#"some text" will have the background with color you type, but "abob" will not
PROMPT='%B%F{green}%n%f %F{cyan}[%~]%f%b %# '

alias ls='ls --color=tty' # colorful ls
alias ll='ls -la'         # show long listing
alias li='ls -i'          # ls with adresses
alias lh='ls -hl' 	  # human-readable long ls
alias cmt='git commit'	  # commit
alias ada='git add -A'	  # adds all file to commit
alias psh='git push'	  # push
alias fih='cat ~/.zsh-hist | grep' # Find In History - fih

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
