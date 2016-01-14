Rails.application.routes.draw do
  root 'app#index'

  # Any Angular route should go to app#index (to get through ng-view)!
  match '/restaurants/*path' => 'app#index', via: [:get]
  match '/users/*path' => 'partials#userShow', via: [:get]

  get 'partials/itemShow' => 'partials#itemShow'
  get 'partials/menuItems' => 'partials#menuItems'
  get 'partials/restaurants' => 'partials#restaurants'
  get 'partials/userShow' => 'partials#userShow'

  resources :users, only: [:new, :create, :show]
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


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
