#Programs
alias vi='vim'
alias open='xdg-open'

#System
alias off='poweroff'

#Shell
alias ls='ls --color'
alias tree='tree -L 2'
alias q='exit'

#Git
alias gs='git status'
alias gsu='git pull --recurse-submodules'
alias gb='git branch'
alias gp='git pull'
alias gpp='git push'
alias gcm='git checkout master'
alias gcp='git checkout production'
alias gfr='git fetch && git rebase'
alias gd='git diff .'
alias gdc='git diff --cached'
gbn() { # New branch from master
  gcm && git checkout -b $1
}
gbd() { # Delete branch local and remote
  git branch -d $1 && git push origin :$1
}
gri() { # Git rebase interactively last n commits
  git rebase -i HEAD~$1 && git commit --amend --reset-author
}
gpn() { # Push new branch
  git push --set-upstream origin $1
}

#Projects
alias rp='cd ~/code/replaypoker'
poker() {
  rails runner "RP2Server.start($1)"
}
startstaging () {
  ssh deploy@cacau.sfarm1.com ec2/staging.sh $1 start
}
stopstaging () {
  ssh deploy@cacau.sfarm1.com ec2/staging.sh $1 stop
}

#Transmission
alias pirateon='sudo systemctl start transmission'
alias pirateoff='sudo systemctl stop transmission'

#Pacman
alias update='sudo pacman -Syyu'