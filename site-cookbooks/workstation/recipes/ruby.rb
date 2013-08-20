ruby_build_ruby node[:ruby]

template "/etc/profile.d/ruby.sh" do
  group "root"
  owner "root"
  mode "0744"
  source "workstation-ruby.erb"
  variables({
      :ruby => node[:ruby]
    })
end

execute "install bundler" do
  command "sudo /usr/local/ruby/#{node[:ruby]}/bin/gem install bundler"
end
