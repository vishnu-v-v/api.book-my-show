Rails.application.routes.draw do
  get 'signin/create'
  get 'signup/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :shows, only: :show do
    resources :bookings, only: :create
  end
end
