Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Added signup route to create new users
      post "/signup", to: "users#create"
      post "/avatar", to: "users#change_avatar"
      resources :users, only: [:show, :update]

      # Post routes
      resources :posts

      # Like routes
      get "like/:id", to: "likes#toggle_like"

      # Auth routes
      post "/auth/login", to: "auth#create"
      delete "/auth/logout", to: "auth#destroy"

      # Friend request routes
      post "/add-friend/:user_id", to: "friend_requests#create"
    end
  end
end
