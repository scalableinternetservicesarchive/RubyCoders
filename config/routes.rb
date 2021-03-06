Rails.application.routes.draw do

  devise_for :reviewers
  get 'welcome/index'

  resources :student_applications
  resources :student
  resources :welcome
  resources :reviewer

  devise_for :students

  #root to: "student_applications#index"
  root to: "welcome#index"
  get '/check_application_existence' => 'student_applications#check_application_existence', :as => 'mcheck_application_existence'
  get '/no_application' => 'welcome#no_application', :as => 'no_application_exists'
  get '/redirecting_show' => 'welcome#redirecting_show', :as => 'redirecting_for_show'
  get '/show_map' => 'welcome#show_map', :as => 'show_map'
  post '/admitted' => 'student_applications#admitted', :as => 'admitted'
  post '/rejected' => 'student_applications#rejected', :as => 'rejected'
  get '/about' => 'welcome#about', :as => 'about'
  get '/contact' => 'welcome#contact', :as => 'contact'
  #post '/review_admit' => 'student_applications#review_admit', :as => 'review_admit'
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
