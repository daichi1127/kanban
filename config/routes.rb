Rails.application.routes.draw do
  root "top#index"
  devise_for :users
  
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
  
end
