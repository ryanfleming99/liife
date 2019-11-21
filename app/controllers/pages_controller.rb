class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :configure_permitted_parameters, if: :devise_controller?
  def home
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :photo)}
  end

  def page_params
    params.require(:photo).permit(:title, :body, :photo)
  end
end
