Destc::Application.routes.draw do
  devise_for :users
  # Routes for the Message resource:
  

root 'users#citypick'

get '/citypick', controller: 'users', action: 'citypick'
get '/about', controller: 'users', action: 'about'
get '/conversations', controller: 'messages', action: 'conversation'
get '/conversations/:id', controller: 'messages', action: 'thread' 

  # CREATE
  get '/messages/:id/new', controller: 'messages', action: 'new', as: 'new_message'
  post '/messages', controller: 'messages', action: 'create', as: 'messages'

  # READ
  get '/messages', controller: 'messages', action: 'index'
  get '/messages/:id', controller: 'messages', action: 'show', as: 'message'

  # UPDATE
  get '/messages/:id/edit', controller: 'messages', action: 'edit', as: 'edit_message'
  patch '/messages/:id', controller: 'messages', action: 'update'

  # DELETE
  delete '/messages/:id', controller: 'messages', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  #get("/users/:expertcity", { :controller => 'users', :action => 'filter'})

  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
