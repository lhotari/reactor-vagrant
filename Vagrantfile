# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
    config.cache.enable :generic, {
      "oracle-jdk8-installer" => { cache_dir: "/var/cache/oracle-jdk8-installer" },
      "gvm" => { cache_dir: "/home/vagrant/.gvm/archives" },
    }
    config.cache.enable :apt
    config.cache.enable :apt_lists
  end
  config.vm.hostname = "reactor-vagrant"
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 8080, host: 28080
  config.vm.provider :virtualbox do |vb|
    vb.gui = true  
    vb.customize ["modifyvm", :id, "--memory", "3172", "--vram", 32, "--cpus", 4]
    vb.customize ["modifyvm", :id, "--nictype1", "82545EM"]
    vb.customize ["modifyvm", :id, "--natsettings1", "1500,1024,1024,1024,1024"]
  end
end
