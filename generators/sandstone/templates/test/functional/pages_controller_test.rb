require File.dirname(__FILE__) + '/../sandstone_test_helper'
require 'pages_controller'

# Re-raise errors caught by the controller.
class PagesController; def rescue_action(e) raise e end; end

class PagesControllerTest < ActionController::TestCase
  def setup

  end
end
