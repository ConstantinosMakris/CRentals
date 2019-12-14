Rails.application.routes.draw do
  resources :rentals
  resources :cars
  devise_for :users

  resources :users
  root 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  get 'aboutUs', to: 'home#aboutUs'

  get 'book', to: 'home#carRates'

  get 'destroy_user_session_path', to: 'home#sign_out'

  get 'rentals', to: 'home#rentals'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
