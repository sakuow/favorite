Rails.application.routes.draw do
  root to: 'homes#top'
  get '/home/about' => 'homes#about'
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
end
