#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright (c) 2015 Joe Gardiner, All Rights Reserved.

execute "apt-get update" do
  command "apt-get update"
end
