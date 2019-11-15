Rails.application.routes.draw do
  root 'home#home'
  resources :people
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  get 'aboutUs', to: 'home#aboutUs'

  get 'book', to: 'home#carRates'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
