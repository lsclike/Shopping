Rails.application.routes.draw do
  # devise_scope :user do
  #   post "users/sign_up" => "devise/registrations#new", as: "new_user_registration", redirect_to: "/" # custom path to sign_up/registration
  # end
  devise_for :users, controllers: { confirmation: 'users/confirmations' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'products#index'
  get 'products/:id', to: "products#show", as: :products_show


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
