Rails.application.routes.draw do
  # Event-related routes
  resources :events, only: [:index, :show, :create, :update, :destroy] do
    resources :rsvps, only: [:create, :update, :destroy]
    resources :comments, only: [:create, :show, :destroy]
    resources :tasks, only: [:index, :create, :update, :destroy]
  end

  # User-related routes
  resources :users, only: [:index, :show, :create, :update, :destroy] do
    resources :sessions, only: [:create, :destroy]
    member do
      patch 'update_profile'
    end
  end

  # RSVP routes
  resources :rsvps, only: [:index, :show, :create, :update, :destroy]

  # Comment routes
  resources :comments, only: [:create, :show, :destroy]

  # Session routes for login/logout
  resources :sessions, only: [:create, :destroy]

  # Task routes
  resources :tasks, only: [:index, :create, :update, :destroy]
end
