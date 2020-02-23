Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :mentors do
    resources :bookings, only: [:index, :show] do
      resources :feedback, only: [:show]
    end
  end

  resources :mentees, only: [:show, :new, :create, :update, :destroy] do
    resources :bookings do
      resources :feedback, only: [:show, :create]
    end
  end

end


#index show new create edit update destroy
