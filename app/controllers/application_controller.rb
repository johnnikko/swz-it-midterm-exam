class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  helper_method :admin?

  def admin?
    current_user.role == "admin"
  end
end
