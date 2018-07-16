Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'products#index'
  get 'products/:id', to: "products#show", as: :products_show


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
