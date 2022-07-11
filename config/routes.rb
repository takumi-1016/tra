Rails.application.routes.draw do
  root to: 'home#top'
  resources :users
  resources :rooms  
  get 'home/room_post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
