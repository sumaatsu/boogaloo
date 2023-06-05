Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  resources :users, only: %i[edit update destroy]
  resources :sessions do
    resources :reviews,  only: %i[new create]
    resources :session_tracks,  only: %i[new create]
  end
  resources :karaokes
  resources :tracks #showing the list of tracks for browsing with using AJAX? still any of track instanses isn't created yet.
  resources :reviews,  only: %i[edit update destroy]
  resources :session_tracks,  only: %i[edit update destroy]
  get "pages#search" #searching tracks over API on this action
  get "pages#associate" #asking API any recommendation on this action
end
