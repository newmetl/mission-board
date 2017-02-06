class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if (current_user_id = session[:current_user_id]).present?
      @current_user ||= User.find(current_user_id)
    end
    @current_user
  end
  helper_method :current_user

end
