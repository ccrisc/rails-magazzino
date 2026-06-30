class ApplicationController < ActionController::Base
  before_action :authenticate_manager!
  layout :devise_or_default_layout

  private

  def devise_or_default_layout
    devise_controller? ? "devise" : "application"
  end
end
