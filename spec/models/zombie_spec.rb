require 'spec_helper'

describe Zombie do
  it 'is invalid without name' do
    zombie = Zombie.new
    zombie.should_not be_valid
  end
  
  it 'has a name that natches "Ash Clone"' do
    zombie = Zombie.new(name: "Ash Clone 1")
    zombie.name.should match(/Ash Clone/)
  end
  
  it 'responds to name' do
    zombie = Zombie.new
    zombie.should respond_to(:name)
  end
end

