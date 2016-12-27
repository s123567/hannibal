Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :users do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :upvotes, only: [:create, :destroy]

  resources :quotes, only: [:create, :destroy, :index]
  resources :relationships, only: [:create, :destroy]
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
