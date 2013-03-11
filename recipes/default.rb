#
# Cookbook Name:: rabbitmq_service
# Recipe:: default
#
# Copyright 2012, Opscode, Inc
#

include_recipe "rabbitmq::mgmt_console"

%w{libnagios-plugin-perl libjson-perl}.each do |pkg|
  package pkg do
    action :install
  end
end

include_recipe "git::default"
git "/opt/nagios-plugins-rabbitmq" do
  repository "git://github.com/jamesc/nagios-plugins-rabbitmq.git"
  reference "master"
  action :sync
end

