require 'test_helper'

class NewsItemTest < ActiveSupport::TestCase
  test "should not save news without title" do
    post = NewsItem.new
    assert !post.save, "Saved NewsItems without a title"
  end
end
