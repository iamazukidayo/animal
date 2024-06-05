Rails.application.routes.draw do

devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "home#top"


get "/home/about" => "home#about", as: "about"
resources :diarys, only: [:new, :index, :show, :create, :edit, :update]
resources :users, only: [:show, :edit, :update]
end
