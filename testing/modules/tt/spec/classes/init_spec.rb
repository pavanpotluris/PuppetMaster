require 'spec_helper'
describe 'tt' do

  context 'with defaults for all parameters' do
    it { should contain_class('tt') }
  end
end
