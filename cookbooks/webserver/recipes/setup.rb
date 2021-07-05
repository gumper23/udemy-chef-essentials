#
# Cookbook:: webserver
# Recipe:: setup
#
# Copyright:: 2021, The Authors, All Rights Reserved.
package 'apache2' do
  action :install
end

service 'apache2' do
  action [:start, :enable]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0755'
  owner 'www-data'
  group 'www-data'
end
