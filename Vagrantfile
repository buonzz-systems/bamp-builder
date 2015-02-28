
Vagrant.configure(2) do |config|
  
  config.vm.box = "hashicorp/precise32"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.61"
  
  #config.vm.provision :shell, :path => "bootstrap.sh"

end
