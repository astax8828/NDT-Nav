class ApplicationController < ActionController::Base
  # Redirect after log in and log out
  def after_sign_in_path_for(resource)
    admin_panel_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_admin_session_path
  end


end
