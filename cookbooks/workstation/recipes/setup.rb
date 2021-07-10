#
# Cookbook:: workstation
# Recipe:: setup
#
# Copyright:: 2021, The Authors, All Rights Reserved.
timezone 'America/Los_Angeles' do
  action :set
end

package 'ntp' do
  action :install
end

package 'net-tools' do
  action :install
end

package 'jq' do
  action :install
end

package 'tree' do
  action :install
end

package 'silversearcher-ag' do
  action :install
end

package 'autojump' do
  action :install
end

package 'dmidecode' do
  action :install
end

log "lsb_release #{node['lsb']['codename']}"
