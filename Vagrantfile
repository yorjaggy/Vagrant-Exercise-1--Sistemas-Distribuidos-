# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 

    config.vm.define :centos_webUno do |node|
        node.vm.box = "centos64_updated4"
        node.vm.network :private_network, ip: "192.168.56.101"
        node.vm.network "public_network", :bridge => "eth4", ip:"192.168.131.1", :auto_config => "false", :netmask => "255.255.255.0"
        node.vm.provider :virtualbox do |vb|
          vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_webUno"]
        end
    config.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"
			chef.add_recipe "mirror"
			chef.add_recipe "apache"
			chef.json = {"aptmirror" => 
					{"server" => "192.168.131.254",
					"table" => "devices",
					"webNumb" => "Uno"}
			}
			end
    end

    config.vm.define :centos_webDos do |node|
        node.vm.box = "centos64_updated4"
        node.vm.network :private_network, ip: "192.168.56.102"
        node.vm.network "public_network", :bridge => "eth4", ip:"192.168.131.2", :auto_config => "false", :netmask => "255.255.255.0"
        node.vm.provider :virtualbox do |vb|
          vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_webDos"]
        end
	config.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"
			chef.add_recipe "mirror"
			chef.add_recipe "apache"
			chef.json = {"aptmirror" => 
					{"server" => "192.168.131.254",
					"table" => "consumption",
					"webNumb" => "Dos"}
			}
			end
	end


    config.vm.define :centos_database do |node|
        node.vm.box = "centos64_updated4"
        node.vm.network :private_network, ip: "192.168.56.103"
        node.vm.network "public_network", :bridge => "eth4", ip:"192.168.131.3", :auto_config => "false", :netmask => "255.255.255.0"
        node.vm.provider :virtualbox do |vb|
          vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_database"]
        end
	config.vm.provision :chef_solo do |chef|
		      	chef.cookbooks_path = "cookbooks"
		      	chef.add_recipe "mirror"
		      	chef.add_recipe "postgres"
		      	chef.json ={"aptmirror" => {"server" => "192.168.131.254"}}    
		      	end
	end

    config.vm.define :centos_Balancer do |node|
	node.vm.box = "centos64_updated4"
	node.vm.network :private_network, ip: "192.168.56.104"
	node.vm.network "public_network", :bridge => "eth4", ip:"192.168.131.4", :auto_config => "false", :netmask => "255.255.255.0"
	node.vm.provider :virtualbox do |vb|
	  vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "4", "--name", "centos_Balancer"]
	end
	config.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"
			chef.add_recipe "mirror"
			chef.add_recipe "haproxy"
			chef.json = {"aptmirror" => {"server" => "192.168.131.254"}}
    	end
    end
end
