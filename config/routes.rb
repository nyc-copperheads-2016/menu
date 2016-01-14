Rails.application.routes.draw do
  root 'app#index'

  # Any Angular route should go to app#index (to get through ng-view)!
  match '/restaurants/*path' => 'app#index', via: [:get]
  match '/users/*path' => 'partials#userShow', via: [:get]

  get 'partials/itemShow' => 'partials#itemShow'
  get 'partials/menuItems' => 'partials#menuItems'
  get 'partials/restaurants' => 'partials#restaurants'
  get 'partials/userShow' => 'partials#userShow'

  resources :users, only: [:create]
  resources :sessions, only:[:create]

  namespace :api do
    resources :users, only:[:show]
    resources :restaurants, only:[:index] do
      resources :items, only:[:index, :show]
    end
  end

  resources :favorites, only: [:create, :destroy]

  get 'register' => 'users#new'

  get 'login' => 'sessions#new'
  get 'logout'=> 'sessions#destroy'

end
