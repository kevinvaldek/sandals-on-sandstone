begin
  # If the test is run inside an app
  require File.dirname(__FILE__) + '/test_helper'
rescue LoadError
  # If the test is run from inside the vendor/plugins directory
  require File.expand_path(File.dirname(__FILE__) + "/../../../../test/test_helper")
end

require 'mocha'
require File.dirname(__FILE__) + '/sandstone_test_factory'

class ActiveSupport::TestCase
  def login_as(user)
    @request.session[:user_id] = user
  end
end

# Re-raise controller errors
class ApplicationController < ActionController::Base
  def rescue_action(e)
    raise e
  end
end