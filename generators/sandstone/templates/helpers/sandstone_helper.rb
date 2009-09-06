module SandstoneHelper
  def editor
    logged_in? && current_user ? current_user.editor : nil
  end

  def save_and_continue_button
    submit_tag "Save and continue editing", :class => "send_form"
  end
end