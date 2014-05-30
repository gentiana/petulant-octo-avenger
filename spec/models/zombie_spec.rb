require 'spec_helper'

describe Zombie do
  it { should_not be_valid }
  
  it { should respond_to(:name) }
  
  context 'named Ash Clone' do
    subject(:zombie) { Zombie.new(name: "Ash Clone 1") }
    its(:name) { should match(/Ash Clone/) }
  end
end

