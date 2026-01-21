class Cms::BaseController < ApplicationController
  before_action :require_login

  private

  def require_login
    redirect_to cms_login_path unless current_user
  end
end
