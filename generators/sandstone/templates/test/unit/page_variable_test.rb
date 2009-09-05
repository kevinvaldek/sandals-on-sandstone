require File.dirname(__FILE__) + '/../sandstone_test_helper'

class PageVariableTest < ActiveSupport::TestCase
  should_belong_to :page
  should_validate_presence_of :name, :content
end
