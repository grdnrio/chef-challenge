#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright (c) 2015 Joe Gardiner, All Rights Reserved.
include_recipe 'apt::default'
include_recipe 'firewall::default'

# Install Redis server package
package 'redis-server' do
  action :install
end

# Edit config REQUIRED

# Enable the service
service 'redis-server' do
  action [ :enable, :start ]
end

# block remote connections to the caching server
firewall_rule 'redis' do
  port 6379
  protocol :tcp
  action :deny
end
