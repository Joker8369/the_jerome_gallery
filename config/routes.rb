Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
root to: 'tables#index'
resources :tables
resources :users, except: %i[new create destroy]
resource :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
