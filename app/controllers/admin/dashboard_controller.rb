class Admin::DashboardController < ApplicationController
  layout 'admin'
  
  def index
    @users = User.where(roles: [:user]).order('created_at DESC').limit(5)
    if current_user.has_roles?(:site_admin)
      @n400_forms = N400Form.where(status: [:checked]).order('created_at DESC').limit(5)
    else
      @n400_forms = N400Form.where(status: [:pending]).order('created_at DESC').limit(5)
    end    
  end

  def admin_users
    @users = User.all.order(:roles).order('created_at DESC')
  end

  def admin_n400_forms
    if current_user.has_roles?(:site_admin)
      @n400_forms = N400Form.where(status: [:checked, :rejected, :approved]).order(:status).order('created_at DESC')
    else
      @n400_forms = N400Form.where(status: [:pending, :checked]).order(:status).order('created_at DESC')
    end
  end
end