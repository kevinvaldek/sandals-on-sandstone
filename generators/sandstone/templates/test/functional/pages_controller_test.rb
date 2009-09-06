require File.dirname(__FILE__) + '/../sandstone_test_helper'
require 'pages_controller'

# Re-raise errors caught by the controller.
class PagesController; def rescue_action(e) raise e end; end

class PagesControllerTest < ActionController::TestCase
  def setup
    @page = Factory(:page)
    @editor = Factory(:editor, :role => 'manager', :user => Factory(:user))
    login_as @editor.user
  end

  context "on PUT to :update" do
    context "with valid parameters" do
      context "with HTTP header" do
        setup {
          put :update, :id => @page.to_param, :page => {}
        }

        should_assign_to :page
        should_redirect_to("the workspace") { workspace_path }
      end

      context "with JS header" do
        setup {
          xhr :put, :update, :id => @page.to_param, :page => {}
        }

        should_assign_to :page
        should_respond_with :ok
      end
    end
  end
end
