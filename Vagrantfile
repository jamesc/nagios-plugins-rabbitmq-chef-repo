# Before running vagrant, export the shell variable for the organization on Hosted Chef and
# make sure the validator certificate is in ~/.chef.
#
# export OPSCODE_ORGNAME=your_platform_organization
#
# Also be sure to export the shell variable for the vagrant box (linux flavor) you will be using
#
# export VAGRANT_BOX=opscode-ubuntu-10.04
#
# You can optionally export a shell variable for your Chef server username if it is different
# from your OS user export OPSCODE_USER=bofh

user = ENV['OPSCODE_USER'] || ENV['USER']
orgname = ENV['OPSCODE_ORGNAME']

base_box = ENV['VAGRANT_BOX'] || 'opscode-ubuntu-10.04'
# Chef Server
server = "https://api.opscode.com/organizations/#{orgname}"

Vagrant::Config.run do |config|

  config.berkshelf.node_name = user
  config.berkshelf.config_path = ".chef/knife.rb"
  config.berkshelf.client_key = "#{ENV['HOME']}/.chef/#{user}.pem"

  config.vm.box = base_box
  config.vm.network :hostonly, "33.33.33.100"

  config.vm.provision :shell, :path => "scripts/bootstrap.sh"
  config.vm.provision :chef_client do |chef|
    chef.chef_server_url = server
    chef.validation_key_path = "#{ENV['HOME']}/.chef/#{orgname}-validator.pem"
    chef.validation_client_name = "#{orgname}-validator"

    # Change the node/client name for the Chef Server
    chef.node_name = "vagrant-rabbitmq"

    # Put the client.rb in /etc/chef so chef-client can be run w/o specifying
    chef.provisioning_path = "/etc/chef"

    # logging
    #chef.log_level = :info

    chef.run_list = [ "role[rabbitmq]"]
  end
end
