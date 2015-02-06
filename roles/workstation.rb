
name "server"
description "the simple, bare necessities"

run_list(
  "recipe[ubuntu]",
  "recipe[apt]",
  "recipe[build-essential]",
  "recipe[unattended-upgrades]",
  "recipe[git]",
  "recipe[mysql::client]",
  "recipe[mysql::server]",
  "recipe[mongodb::10gen_repo]",
  "recipe[ruby_build]",
  "recipe[emacs24::compile]",
  "recipe[workstation::packages]",
  "recipe[workstation::commands]",
  "recipe[workstation::ruby]"
)

default_attributes({
                     :ruby => '2.1.5',
                     :mysql => {
                       :server_root_password => '',
                       :server_debian_password => '',
                       :server_repl_password => ''
                     },
                     :emacs24 => {
                       :packages => [
                         "libc6-dev",
                         "libjpeg62-dev",
                         "libncurses5-dev",
                         "libpng-dev",
                         "libtiff4-dev",
                         "libgif-dev",
                         "xaw3dg-dev",
                         "zlib1g-dev",
                         "libice-dev",
                         "libsm-dev",
                         "libx11-dev",
                         "libxext-dev",
                         "libxi-dev",
                         "libxmu-dev",
                         "libxmuu-dev",
                         "libxpm-dev",
                         "libxrandr-dev",
                         "libxt-dev",
                         "libxtst-dev",
                         "libxv-dev"
                       ]
                     }
                   })
