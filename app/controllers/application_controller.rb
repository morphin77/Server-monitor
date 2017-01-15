class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  alias_method :devise_current_user, :current_user
  def current_user
    if params[:user_id].blank?
      devise_current_user
    else
      User.find(params[:user_id])
    end
	end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || dashboards_path
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

end
