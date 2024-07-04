Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", type: "dhcp"

  config.vm.provision "shell", inline: <<-SHELL
    #!/bin/bash

    # Example: Install Docker and other dependencies
    sudo apt update
    sudo apt install -y docker.io ansible curl software-properties-common git
  SHELL
end
