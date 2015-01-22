VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "package.box"
  config.vm.base_mac = "0800276E72F3"
  config.ssh.forward_agent = true

  config.vm.network :private_network, ip:"172.16.1.111"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end

end
