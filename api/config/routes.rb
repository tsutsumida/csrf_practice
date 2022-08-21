Rails.application.routes.draw do
  get 'csrf/attache_csrf_token'
  # Defines the root path route ("/")
  # root "articles#index"

  post 'posts/:id', to: "posts#destroy"
  #resources :posts, only: [:destroy] 
end
