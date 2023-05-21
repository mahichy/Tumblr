Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  devise_for :users
 
  resources :posts do
    resources :comments
  end

  root "posts#index"

  
end
