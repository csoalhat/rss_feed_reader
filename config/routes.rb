RssFeedReader::Application.routes.draw do
  
  resources :subscriptions, only: [:index]


  devise_for :users#, controllers: {:registrations => "registrations", sessions: "sessions"}

  devise_scope :user do
    resources :users, only: [:index]
  end 

  root to: 'home#index'

  resources :articles

  resources :comments

  resources :bookmarks

  resources :categories

  resources :friendships

  get '/users/:user_id/profile', to: "profiles#show", as: :user_profile

  get :profile,        to: "profiles#show",   as: :current_user_profile
  get '/profile/edit', to: "profiles#edit",   as: :edit_current_user_profile
  put '/profile',      to: "profiles#update", as: :update_current_user_profile

  resources :feeds do
    member do
      get :subscribe
    end
  end

  resources :home, only: [:index]

end
