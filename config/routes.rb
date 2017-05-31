Rails.application.routes.draw do
  # resources :issues, only: [:show, :edit]
  resources :workshop_enrolments
  resources :sessions
  resources :workshops do
    resources :sessions
  end
  resources :computers
  resources :labs do
    resources :computers
  end
  resources :guest_visits
  resources :guest_lecturers do
    resources :guest_visits
  end
  resources :offerings do
    resources :students
    resources :enrolments
    member do
      get 'add_student'
    end
  end
  resources :semesters
  resources :pdps do
    get 'report', on: :new
    member do
      get 'report'
      get 'review'
      patch 'review_complete'
    end
  end
  resources :instructors do
    collection do
      get 'lookup'
    end
  end
  resources :enrolments
  # resources :items
  resources :lessons do
    resources :items
  end
  resources :students do
    resources :issues, shallow: true
    resources :pdps do
      get 'review'
    end
  end
  # get 'students/:id/createPDP' => 'students#createPDP'
  resources :outcomes
  resources :courses do
    resources :outcomes
    resources :offerings
    resources :lessons do
      resources :items
    end
  end
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
