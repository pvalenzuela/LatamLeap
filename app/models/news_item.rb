class NewsItem < ActiveRecord::Base
  attr_accessible :abstract, :author, :content, :title
  
  validates :title, :presence => true
  validates :content, :presence => true

end
