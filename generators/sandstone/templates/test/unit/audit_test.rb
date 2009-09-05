require File.dirname(__FILE__) + '/../sandstone_test_helper'

class AuditTest < ActiveSupport::TestCase
  should_belong_to :editor
  should_require_attributes :event, :editor_id
end
