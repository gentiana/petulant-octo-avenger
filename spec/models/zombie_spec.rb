require 'spec_helper'

describe Zombie do
  it { should_not be_valid }
  
  it { should respond_to(:name) }
  
  context "#decapitate" do
    subject(:zombie) { Zombie.create(name: 'la', weapon: axe) }
    let(:axe) { Weapon.create(name: "Axe") }
    
    it 'calls weapon.slice' do
      zombie.weapon.should_receive(:slice)
      zombie.decapitate
    end
    
    it 'sets status to dead again' do
      zombie.weapon.stub(:slice)
      zombie.decapitate
      zombie.status.should == 'dead again' 
    end
  end
  
  context 'named Ash Clone' do
    subject(:zombie) { Zombie.new(name: "Ash Clone 1") }
    its(:name) { should match(/Ash Clone/) }
  end
end

