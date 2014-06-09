RssFeedReader::Application.routes.draw do
  
  devise_for :users

  root to: 'feeds#index'

  resources :articles

  resources :comments

  resources :bookmarks

  resources :categories

  resources :friendships

  resources :profiles

  resources :users

  resources :feeds

end
