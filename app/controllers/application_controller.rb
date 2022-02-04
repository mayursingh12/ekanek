class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def authenticate_admin
    if current_user.present?
      #proceed
    else
      redirect_to root_path
    end
  end
end
