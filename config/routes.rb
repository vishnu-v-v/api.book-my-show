Rails.application.routes.draw do
  post 'refresh', controller: :refresh, action: :create
  post 'signin', controller: :signin, action: :create
  post 'signup', controller: :signup, action: :create
  delete 'signin', controller: :signin, action: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :shows, only: %i[index show] do
    resources :bookings, only: :create
  end
end
