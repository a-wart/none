Rails.application.routes.draw do
  get 'home/index'

  get '/faucets/import'

  get 'faucets/index'
  get 'faucets/get'

  get 'rotate/index'

  root 'home#index'

  resources :faucets do
  	collection { post :import }
  end

  root to: "faucets#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
