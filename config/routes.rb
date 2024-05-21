Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'flowers/top' => 'flowers#top'
  get 'flowers/loss' => 'flowers#loss'
  get 'flowers/shop' => 'flowers#shop'
  resources :bouquets
  resources :flowers
 
  root 'flowers#top'
 
  get 'tweets/:id' => 'tweets#show',as: 'tweet'
  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy'
  get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'
  
end
