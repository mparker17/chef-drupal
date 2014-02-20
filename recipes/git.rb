#
# Cookbook Name:: drupal
# Recipe:: git
#

git node['drupal']['drupal_root'] do
  destination node['drupal']['drupal_root']
  repository node['drupal']['repository']
  reference node['drupal']['reference']
  action :sync
end
