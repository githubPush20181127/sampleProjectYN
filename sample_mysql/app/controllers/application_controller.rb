class ApplicationController < ActionController::Base

  before_action :set_host
  before_action :require_login

  def set_host
    Rails.application.routes.default_url_options[:host] = request.host_with_port
  end

  private
    def not_authenticated
      redirect_to login_path, alert: "Please login first"
    end

end
