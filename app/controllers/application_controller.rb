class ApplicationController < ActionController::Base
  protected
  protect_from_forgery with: :exception
  helper_method :current_account
  helper_method :after_sign_in_path_for

  def after_sign_in_path_for(resource)
      stored_location_for(resource) || welcome_index_path
  end

  def current_account
    if current_user
      Account.find_by(user_id: current_user.id)
    end
  end

  # def authorize_admin
  #   redirect_to :back, status: 401 unless current_user.admin
  #   #redirects to previous page
  # end
end
