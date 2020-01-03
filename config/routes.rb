Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :entertainments, except: [:destroy]
  resources :grave_gangs, except: [:destroy]
  resources :locations, only: [:index, :show]
  resources :members
  resources :themes, except: [:destroy]

  resources :sessions, only: [:new, :create]
  delete "/session", to: "sessions#destroy", as: "logout"
  get "/session/new", to: "sessions#new", as: "login"
end
