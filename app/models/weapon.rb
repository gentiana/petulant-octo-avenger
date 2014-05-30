class Weapon < ActiveRecord::Base
  belongs_to :zombie
  
  def slice(body, part)
    
  end
end
