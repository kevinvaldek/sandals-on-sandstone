require File.dirname(__FILE__) + '/../sandstone_test_helper'

module UnitTest

  class PageVariableTest < Test::Unit::TestCase
    should_belong_to :page
    should_require_attributes :name, :content
  end
end