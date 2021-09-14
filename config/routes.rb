Rails.application.routes.draw do
  get 'books/new'
  get 'books/index'
  get 'books/create'
  get 'books/show'
  get 'books/destroy'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
