class Admin::DashboardController < ApplicationController
  layout 'admin'
  
  def index
    if params[:search].present?
      @users = User.where("email LIKE ?", "%#{params[:search]}%").limit(5)
    else
      @users = User.where(roles: [:user]).order('created_at DESC').limit(5)
    end
    if current_user.has_roles?(:site_admin)
      @n400_forms = N400Form.where(status: [:checked]).order('created_at DESC').limit(5)
    else
      @n400_forms = N400Form.where(status: [:pending]).order('created_at DESC').limit(5)
    end    
  end

  def admin_users
    if params[:search].present?
      @users = User.where("email LIKE ?", "%#{params[:search]}%").page(params[:page]).per(10)
    else
      @users = User.all.order(:roles).order('created_at DESC').order('created_at DESC').page(params[:page]).per(10)
    end  
  end

  def admin_n400_forms
    if params[:search].present?
      if current_user.has_roles?(:site_admin)
        @n400_forms = N400Form.joins(:user).where("email LIKE ?", "%#{params[:search].downcase}%").where(status: [:checked, :rejected, :approved]).order(:status).order('created_at DESC').page(params[:page]).per(10)
      else
        @n400_forms = N400Form.joins(:user).where("email LIKE ?", "%#{params[:search].downcase}%").where(status: [:pending, :checked]).order(:status).order('created_at DESC').page(params[:page]).per(10)
      end      
    else
      if current_user.has_roles?(:site_admin)
        @n400_forms = N400Form.where(status: [:checked, :rejected, :approved]).order(:status).order('created_at DESC').page(params[:page]).per(10)
      else
        @n400_forms = N400Form.where(status: [:pending, :checked]).order(:status).order('created_at DESC').page(params[:page]).per(10)
      end      
    end
  end
end

