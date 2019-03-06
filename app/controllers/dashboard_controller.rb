class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @n400_form = N400Form.where(user_id: current_user.id).first
  end
end
