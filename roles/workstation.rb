
name "server"
description "the simple, bare necessities"

run_list(
  "recipe[mongodb::10gen_repo]",
  "recipe[ubuntu]",
  "recipe[apt]",
  "recipe[build-essential]",
  "recipe[unattended-upgrades]",
  "recipe[mysql::client]",
  "recipe[mysql::server]",
  "recipe[git]",
  "recipe[ruby_build]",
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
                     }
                   })
