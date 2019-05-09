Rails.application.routes.draw do
  #get 'avatars/create'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]do
    resources :avatars, only: [:create]
  end
end
