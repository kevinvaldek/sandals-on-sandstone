require File.dirname(__FILE__) + '/../sandstone_test_helper'
require 'editors_controller'

# Re-raise errors caught by the controller.
class EditorsController; def rescue_action(e) raise e end; end

class EditorsControllerTest < ActionController::TestCase
  def setup

  end
end
