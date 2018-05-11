class ApplicationController < ActionController::Base
  protected
  protect_from_forgery with: :exception
  helper_method :current_account

  def after_sign_in_path_for(resource_or_scope)
    if current_user.admin = true
      welcome_index_path
    else
      welcome_index_path
  end
end
  def current_account
    if current_user
      Account.find_by(user_id: current_user.id)
    end
  end

  def authorize_admin
    redirect_to :back, status: 401 unless current_user.admin
    #redirects to previous page
end
end
