class UserRole < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :users
  
  def self.active_state_id
    1
  end
end
