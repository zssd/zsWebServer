Vagrant.configure("2") do |config|

  config.vm.hostname = "zsWebServer"

  config.vm.box = "Server2012R2_2"
  config.vm.box_url = ""
  config.vm.guest = :windows
  config.vm.boot_timeout = 600
  config.berkshelf.enabled = true
  #config.vm.network :private_network, ip: "33.33.33.10"
  config.omnibus.chef_version = :latest

    # This creates the Virtual Box network as non-public
  config.windows.set_work_network = true
  config.vm.provider "virtualbox" do |v|
    # v.gui = true
    v.memory = 1024
    v.cpus = 1
  end

  # THE FOLLOWING ARE ~GENERALLY~ WINDOWS-SPECIFIC
  # Port forward WinRM and RDP
  #config.vm.network :forwarded_port, guest: 3389, host: 3389
  config.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"
  #config.winrm.host = "33.33.33.10"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ""
    chef.log_level = :debug
    chef.run_list = [
        "recipe[zsWebServer]",
        "recipe[zsWebServer::baseweb]",
        "recipe[minitest-handler]"
      ]
  end
end
