class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    @account = current_account
    main_index_path

  end
end
