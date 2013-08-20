#! env bash

ssh-copy-id $SERVER

# knife solo prepare $SERVER nodes/workstation.json
knife solo cook $SERVER nodes/workstation.json

# rsync -harv --progress ~/.ssh/ $host:.ssh
# rsync -harv --progress ~/.mozilla $host:.mozilla

# commands=()

# commands+=('rm -rf Desktop Documents Downloads examples.desktop install.sh Music Pictures Public Templates Videos')
# commands+=('mkdir ~/code')
# commands+=('mkdir ~/downloads')
# commands+=('mkdir ~/tmp')
# commands+=('mkdir ~/tmpmnt')
# commands+=('git clone git@github.com:re5et/.emacs.d.git')
# commands+=('git clone git@github.com:re5et/.dotfiles.git')
# commands+=('git clone git@github.com:re5et/handy-shell-scripts.git ~/bin')
# commands+=('cd ~/.dotfiles && git submodule init && git submodule update && git submodule sync')
# commands+=('unlink .stumpwmrc')
# commands+=('unlink .keysnail.js')
# commands+=('unlink .gtkrc-2.0')
# commands+=('unlink .xscreensaver')
# commands+=('unlink .zshrc')
# commands+=('unlink .gitconfig')
# commands+=('unlink .gitignore')
# commands+=('rm -rf .stumpwmrc .keysnail.js .gtkrc-2.0 .xscreensaver .zshrc .gitconfig .gitignore')
# commands+=('ln -s ~/.dotfiles/{.stumpwmrc,.keysnail.js,.gtkrc-2.0,.xscreensaver,.zshrc,.gitconfig,.gitignore} ./')


# command="echo hi"

# for i in "${commands[@]}"
# do
#   command="$command; cd; $i"
# done

# ssh $host $command
