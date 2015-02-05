ruby_build_ruby node[:ruby]

%w{ /etc/bash.bashrc /etc/profile.d/ruby.sh }.each do |script_path|
  template script_path do
    group "root"
    owner "root"
    mode "0744"
    source "workstation-ruby.erb"
  end
end

execute "install bundler" do
  command "sudo /usr/local/ruby/#{node[:ruby]}/bin/gem install bundler"
end
