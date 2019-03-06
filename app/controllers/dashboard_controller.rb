class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    if logged_in?(:site_admin, :site_manager)
      redirect_to admin_dashboard_path
    end
    @n400_form = N400Form.where(user_id: current_user.id).first
  end

  def admin_dashboard
  end
end
