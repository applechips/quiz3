Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  resources :ideas do
    resources :comments, only: [:create, :destroy]
    resources :members
    resources :likes, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end




  root 'ideas#index'
end
