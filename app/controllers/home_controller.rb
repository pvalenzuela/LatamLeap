class HomeController < ApplicationController
  def index
    @news_items = NewsItem.limit(3).order("created_at DESC")
  end
  
  def about    
  end

end
