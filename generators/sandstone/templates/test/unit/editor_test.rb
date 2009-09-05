require File.dirname(__FILE__) + '/../sandstone_test_helper'

class EditorTest < ActiveSupport::TestCase
  should_validate_presence_of :user_id
  should_validate_uniqueness_of :user_id
  should_have_many :pages, :audits

  def setup
    Factory(:editor, :role => 'author', :user => Factory(:user))
  end
end
