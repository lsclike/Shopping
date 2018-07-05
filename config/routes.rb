Rails.application.routes.draw do
  root 'product#index'

  get 'product/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
