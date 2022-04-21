Rails.application.routes.draw do
  root "tweeets#index"


  devise_for :users

  resources :tweeets
  resources :users do
    get 'profile'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

