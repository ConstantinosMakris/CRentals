Rails.application.routes.draw do
  resources :cars
  devise_for :users
  root 'home#home'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  get 'aboutUs', to: 'home#aboutUs'

  get 'book', to: 'home#carRates'

  get 'quote', to: 'home#quote'
  post 'get_quote', to: 'home#get_quote'

  get 'destroy_user_session_path', to: 'home#sign_out'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
