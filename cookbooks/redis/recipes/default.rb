#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright (c) 2015 Joe Gardiner, All Rights Reserved.
include_recipe 'chef-client'
include_recipe 'apt::default'
include_recipe 'firewall::default'

# Install Redis server package
package 'redis-server' do
  action :install
end

template 'redis.conf' do
  path "#{node['redis']['dir']}/redis.conf"
  source 'redis.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

# Enable the service
service 'redis-server' do
  action [ :enable, :start ]
end

# block remote connections to the caching server
firewall_rule 'redis' do
  port node['redis']['port']
  protocol :tcp
  command :deny
end
