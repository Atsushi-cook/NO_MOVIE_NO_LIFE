Rails.application.routes.draw do
  devise_for :users

  post "likes/:tweet_id/create" => "likes#create"
  post "likes/:tweet_id/destroy" => "likes#destroy"

  root to: 'tweets#index'
  namespace :tweets do
    resources :searches, only: :index
  end
  resources :tweets do
    resources :comments, only: :create
    
  end
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end