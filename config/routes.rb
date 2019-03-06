Rails.application.routes.draw do
  resources :field_offices
  resources :n400_forms, except: [:index]
  get '/dashboard', to: 'dashboard#index'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  # get '/admin/dashboard', to: 'dashboard#admin_dashboard'

  devise_for :users

  devise_scope :user do
    get '/logout', to: 'devise/sessions#destroy'
  end
  namespace :admin do
    get '/dashboard', to: 'dashboard#index'   
    get '/users', to: 'dashboard#admin_users'   
    get '/n400_forms', to: 'dashboard#admin_n400_forms'   
  end

  authenticated :user do
    root :to => 'dashboard#index'     
  end  
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

