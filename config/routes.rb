Rails.application.routes.draw do
  get "rewards/index"
  get "rewards/show"
  get "rewards/new"
  get "rewards/edit"
  devise_scope :user do
    root to: 'users/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users
  resources :users, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"
end
