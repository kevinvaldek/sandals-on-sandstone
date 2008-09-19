require File.dirname(__FILE__) + '/../sandstone_test_helper'

module UnitTest

  class EditorTest < Test::Unit::TestCase
    should_require_attributes :user_id
    should_require_unique_attributes :user_id
#    should_belong_to :user
    should_have_many :pages, :audits
  end

end