require File.dirname(__FILE__) + '/../sandstone_test_helper'
require 'previews_controller'

# Re-raise errors caught by the controller.
class PreviewsController; def rescue_action(e) raise e end; end

class PreviewsControllerTest < ActionController::TestCase
  def setup

  end
end
