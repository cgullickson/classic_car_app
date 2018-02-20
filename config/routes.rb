Rails.application.routes.draw do
  resources :categories
  resources :awards
  resources :cars
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  root 'welcome#home'
  resources :users do
    resources :cars
  end

  resources :cars do
    resources :awards
  end
end
