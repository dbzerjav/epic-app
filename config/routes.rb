Rails.application.routes.draw do
  devise_for :users
  
  root 'pages#home'
   
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  
  get 'pages/our_company', to: 'pages#our_company' 
  get 'pages/power_of_epic', to: 'pages#power_of_epic'
  get 'pages/prof_affiliation', to: 'pages#prof_affiliation'
  get 'pages/our_people', to: 'pages#our_people'
  get 'pages/our_commitment', to: 'pages#our_commitment'
  get 'pages/ethical_standard', to: 'pages#ethical_standard'
  get 'pages/executives', to: 'pages#executives'
  get 'pages/lic_and_cert', to: 'pages#lic_and_cert'
  
  get 'pages/how_it_works', to: 'pages#how_it_works' 
  get 'pages/epic_advantage', to: 'pages#epic_advantage'
  get 'pages/epic_approach', to: 'pages#epic_approach'
  
  get 'pages/suffered_damage', to: 'pages#suffered_damage' 
  get 'pages/flood', to: 'pages#flood'
  get 'pages/water_and_mold', to: 'pages#water_and_mold'
  get 'pages/wind_and_hurricane', to: 'pages#wind_and_hurricane'
  get 'pages/collapse_and_sinkhole', to: 'pages#collapse_and_sinkhole'
  get 'pages/multi_cause', to: 'pages#multi_cause'
  get 'pages/other_cause', to: 'pages#other_cause'
  
  get 'pages/filing_claim', to: 'pages#filing_claim'  
  get 'pages/commercial', to: 'pages#commercial'
  get 'pages/residential', to: 'pages#residential'
  get 'pages/retail', to: 'pages#retail'
  get 'pages/medical', to: 'pages#medical'
  get 'pages/industrial', to: 'pages#industrial'
  get 'pages/service', to: 'pages#service'
  get 'pages/investment_prop', to: 'pages#investment_prop'
  get 'pages/worship', to: 'pages#worship'
 
  get 'pages/resource', to: 'pages#resource'
  get 'pages/faq', to: 'pages#faq'
  get 'pages/articles', to: 'pages#articles'
  get 'pages/prepare', to: 'pages#prepare'
  get 'pages/links', to: 'pages#links'
  get 'pages/stories', to: 'pages#stories'

  
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
