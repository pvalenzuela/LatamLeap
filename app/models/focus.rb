class Focus < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_and_belongs_to_many :users, :class_name => "User"

end
