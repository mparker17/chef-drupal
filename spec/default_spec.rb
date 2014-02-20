require 'chefspec'
require 'chefspec/berkshelf'

describe 'drupal::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'logs noop' do
    expect(chef_run).to write_log('Noop.')
  end
end
