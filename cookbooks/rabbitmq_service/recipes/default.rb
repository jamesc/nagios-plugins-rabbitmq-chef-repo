#
# Cookbook Name:: rabbitmq_service
# Recipe:: default
#
# Copyright 2012, Opscode, Inc
#
# Apache2
#

%w{libnagios-plugin-perl libjson-perl}.each do |pkg|
  package pkg do
    action :install
  end
end

rabbitmq_user "user" do
  password "sekret"
  action :add
end


rabbitmq_plugin "rabbitmq_management" do
  action :enable
end

git "/opt/nagios-plugins-rabbitmq" do
  repository "git://github.com/jamesc/nagios-plugins-rabbitmq.git"
  reference "master"
  action :sync
end

