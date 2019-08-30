require 'spec_helper'
describe 'localusers' do

  context 'with defaults for all parameters' do
    it { should contain_class('localusers') }
  end
end
