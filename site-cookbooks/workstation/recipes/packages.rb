apt_repository "emacs24" do
  uri "http://ppa.launchpad.net/cassou/emacs/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  key "CEC45805"
  keyserver "hkp://keyserver.ubuntu.com:80"
  action :add
end

%w{ emacs24 emacs24-el emacs24-common-non-dfsg}.each do |pkg|
  package pkg do
    action :install
  end
end

%w{linux-headers-generic nmap zsh xscreensaver electricsheep dmenu texinfo sbcl cl-clx-sbcl cl-ppcre sakura ncurses-term acpi virtualbox sshfs chromium-browser avahi-daemon avahi-discover imagemagick}.each do |pkg|
  package pkg do
    action :install
  end
end
