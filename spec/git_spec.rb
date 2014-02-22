require 'chefspec'
require 'chefspec/berkshelf'

describe 'drupal::git' do
  let(:chef_run) { ChefSpec::Runner.new }

  it 'clones the official repository at branch 7.x to /var/www' do
    # Run the recipe.
    chef_run.converge(described_recipe)

    # Test.
    expect(chef_run).to sync_git('/var/www').with(
      :repository => 'http://git.drupal.org/project/drupal.git',
      :reference => '7.x'
    )
  end

  it 'clones the github mirror at branch 6.x to /srv/drupal' do
    # Set any attributes we want to test.
    chef_run.node.set['drupal']['repository'] =
      'git@github.com:drupal/drupal.git'
    chef_run.node.set['drupal']['reference'] = '6.x'
    chef_run.node.set['drupal']['drupal_root'] = '/srv/drupal'

    # Run the recipe.
    chef_run.converge(described_recipe)

    # Test.
    expect(chef_run).to sync_git('/srv/drupal').with(
      :repository => 'git@github.com:drupal/drupal.git',
      :reference => '6.x'
    )
  end

end
