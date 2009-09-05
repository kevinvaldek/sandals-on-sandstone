require File.dirname(__FILE__) + '/../sandstone_test_helper'
require 'sitemaps_controller'

# Re-raise errors caught by the controller.
class SitemapsController; def rescue_action(e) raise e end; end

class SitemapsControllerTest < ActionController::TestCase
  def setup

  end
end
