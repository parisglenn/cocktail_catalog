CocktailCatalog::Application.routes.draw do
  resources :tags

  resources :cocktail_sources

  resources :glasses

  resources :ingredient_inventories

  resources :ingredient_modifications

  resources :ingredient_categories

  resources :ingredient_families

  resources :ingredient_types

  resources :ingredients

  resources :cocktails

  root :to => "home#index"

#see if I can do this programattically by name
  get '/menu', to: redirect('/tags/1')
  get '/all', to: redirect('/tags/17')
  get '/ondeck', to: redirect('/tags/18')
  get '/booze', to: redirect('/tags/20')
  get '/hannah', to: redirect('/tags/21')
  get '/guests', to: redirect('/tags/27')
  get '/shaken', to: redirect('/tags/29')
  get '/stirred', to: redirect('/tags/30')
  get '/punch', to: redirect('/glasses/16')
  get '/mocktails', to: redirect('/tags/33')

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
