require 'spec_helper'
describe 'telegraf' do
  context 'with default values for all parameters' do
    it { should contain_class('telegraf') }
  end
end
