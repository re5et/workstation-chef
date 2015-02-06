%w{
ubuntu-desktop
linux-headers-generic
autoconf
synergy
curl
git
nmap
zsh
xscreensaver
dmenu
texinfo
sbcl
cl-clx-sbcl
cl-ppcre
sakura
ncurses-term
acpi
virtualbox
sshfs
chromium-browser
avahi-daemon
avahi-discover
imagemagick
}.each do |pkg|
  package pkg do
    action :install
  end
end
