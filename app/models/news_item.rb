class NewsItem < ActiveRecord::Base
  attr_accessible :abstract, :author, :content, :title, :image
  
  validates :title, :presence => true
  validates :content, :presence => true
 
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
