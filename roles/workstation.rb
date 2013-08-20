name "server"
description "the simple, bare necessities"

run_list(
  "recipe[mysql::client]",
  "recipe[mysql::server]",
  "recipe[mongodb::10gen_repo]",
  "recipe[ubuntu]",
  "recipe[apt]",
  "recipe[unattended-upgrades]",
  "recipe[git]",
  "recipe[workstation::packages]",
  "recipe[workstation::commands]",
  "recipe[ruby_build]",
  "recipe[workstation::ruby]"
  )

default_attributes({
    :ruby => '1.9.3-p448',
    :mysql => {
      :server_root_password => '',
      :server_debian_password => '',
      :server_repl_password => ''
    }
  })
