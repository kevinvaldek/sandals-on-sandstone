require File.dirname(__FILE__) + '/../sandstone_test_helper'
require 'page_templates_controller'

# Re-raise errors caught by the controller.
class PageTemplatesController; def rescue_action(e) raise e end; end

class PageTemplatesControllerTest < ActionController::TestCase
  def setup

  end
end
