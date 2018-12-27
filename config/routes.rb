Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/login', to: 'users#login'
      resources :sports, only: [:index, :show] do
        resources :fields, only: [:index]
      end
      resources :users, only: [:create, :update, :show] do
        resources :bookings, only: [:create]
      end
      resources :bookings, only: [:show]
      resources :bookings, only: [:update, :delete]
      resources :fields, only: [] do
        resources :booking_slots, only: [:create]
      end
      resources :booking_slots, only: [:index, :update, :delete]
      resources :bookings, only: [] do
        resources :reviews, only: [:create]
        resources :joins, only: [:create]
      end
      resources :joins, only: [:delete]
    end
  end

end
