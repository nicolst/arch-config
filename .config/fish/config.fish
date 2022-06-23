alias ls='ls --color=auto'
alias ll='ls -alF'
alias replay='obs --startreplaybuffer --minimize-to-tray'
alias btcon='bluetoothctl connect'
alias btdev='bluetoothctl devices'
alias zathura='zathura --fork'

set -x EDITOR vim
set -x LC_ALL en_US.UTF-8
set -x LEDGER_FILE /home/nicco/Documents/økonomi/2021.journal



if status is-interactive
    # Commands to run in interactive sessions can go here
end
