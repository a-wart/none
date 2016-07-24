Rails.application.routes.draw do
  get 'home/index'

  get 'faucets/index'

  get 'rotate/index'

  root 'home#index'

  resources :faucets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
