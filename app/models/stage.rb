class Stage < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :users
  

end
