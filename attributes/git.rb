#
# Cookbook Name:: drupal
# Recipe:: git
#

# The webroot of most systems is at /var/www.
default['drupal']['drupal_root'] = '/var/www'

# The URL to clone from. In this case, it's Drupal core's read-only URL. See
# https://drupal.org/project/drupal/git-instructions.
default['drupal']['repository'] = 'http://git.drupal.org/project/drupal.git'

# The branch/tag/commit to check out. Defaults to the HEAD of the latest stable
# version of Drupal, 7.x.
default['drupal']['reference'] = '7.x'
