require 'test_helper'

#rake test test/models/page_test.rb

class PageTest < ActiveSupport::TestCase
  test "A Page should not save without a title" do
     page = Page.new
     assert !page.save
   end
end
