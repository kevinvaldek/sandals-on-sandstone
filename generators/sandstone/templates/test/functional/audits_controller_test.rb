require File.dirname(__FILE__) + '/../sandstone_test_helper'
require 'audits_controller'

# Re-raise errors caught by the controller.
class AuditsController; def rescue_action(e) raise e end; end

class AuditsControllerTest < ActionController::TestCase
  def setup

  end
end
