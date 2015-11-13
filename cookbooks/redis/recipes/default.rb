#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright (c) 2015 Joe Gardiner, All Rights Reserved.

package 'redis-server' do
  action :install
end

# Edit config REQUIRED

service 'redis-server' do
  action [ :enable, :start ]
end
