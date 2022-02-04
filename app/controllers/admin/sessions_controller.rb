class Admin::SessionsController < ApplicationController

  def new

  end

  def create
    if sign_in_admin
      redirect_to admin_dashboard_path
    else
      flash[:error] = 'Email/Password combination wrong, contact super admin.'
      render action: :new
    end
  end

  def register

  end

  def signup
    user = User.new(users_params)
    if user.save
      sign_in(user)
      flash[:success] = "Logged in successfully."
      redirect_to admin_dashboard_path
    else
      flash.now[:error] = "There was something wrong with your login details."
      render 'register'
    end
  end

  def destroy
    sign_out
    flash[:error] = "You have been logged out."
    redirect_to root_path
  end

  private

  def users_params
    params.require(:session).permit(:email,
                                    :password,
                                    :first_name,
                                    :last_name,
                                    :mobile,
                                    ).merge(role: 'admin')
  end

  def sign_in_admin
    email = params[:session][:email]
    password = params[:session][:password]
    return false unless email.present? or password.present?
    admin = User.where(email: email).first
    return false unless admin.present?
    if admin.valid_password?(password)
      flash[:success] = "Signed in as #{admin.email}. All admin operations are logged."
      sign_in(admin)
    end
  end

end
