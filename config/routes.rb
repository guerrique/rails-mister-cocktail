Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
    resources :cocktails, only: [:index, :show, :new, :create], shallow: true do
      resources :doses, only: [:index, :show, :new, :create, :destroy]
    end
    # resources :ingredients, only: [:index]
  end

# end
