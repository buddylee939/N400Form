Rails.application.routes.draw do
  resources :field_offices
  resources :n400_forms
  get '/dashboard', to: 'dashboard#index'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  devise_for :users

  authenticated do
    root :to => 'dashboard#index'
  end  
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
