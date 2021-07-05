# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-ohai")
  raise "vagrant-ohai plugin is not installed! Install with 'vagrant plugin install vagrant-ohai'"
end

NODE_SCRIPT = <<EOF.freeze
  wget https://packages.chef.io/files/stable/chef-workstation/21.2.278/ubuntu/20.04/chef-workstation_21.2.278-1_amd64.deb
  dpkg -i chef-workstation_21.2.278-1_amd64.deb
  git clone https://github.com/gumper23/udemy-chef-essentials.git
  chown -R vagrant:vagrant udemy-chef-essentials/
EOF

def set_hostname(server)
  server.vm.provision 'shell', inline: "hostname #{server.vm.hostname}"
end

Vagrant.configure(2) do |config|
  config.vm.define 'uce-ubuntu-20-04' do |n|
    n.vm.box = 'bento/ubuntu-20.04'
    n.vm.hostname = 'uce-ubuntu-20-04'
    n.vm.provision :shell, inline: NODE_SCRIPT.dup
    n.vm.network 'forwarded_port', guest: 80, host: 8080
    set_hostname(n)
  end
end
