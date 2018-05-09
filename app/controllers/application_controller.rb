class ApplicationController < ActionController::Base
  protected
  protect_from_forgery with: :exception
  helper_method :current_account

  def after_sign_in_path_for(resource_or_scope)
    welcome_index_path
  end

  def current_account
    if current_user
      Account.find_by(user_id: current_user.id)
    end
  end
end
