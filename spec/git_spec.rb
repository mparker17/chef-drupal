require 'chefspec'
require 'chefspec/berkshelf'

describe 'drupal::git' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'clones to /var/www' do
    expect(chef_run).to sync_git('/var/www')
  end
end
