class Cms::SessionsController < ApplicationController
  layout 'cms'

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cms_root_path, notice: "Login berhasil"
    else
      flash.now[:alert] = "Email atau password salah"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    reset_session
    redirect_to cms_login_path, notice: "Logout berhasil"
  end
end
