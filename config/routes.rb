Rails.application.routes.draw do
  root to: "main#index", as: :root # or instead of root to: -> get "/", to:

  get "/about", to: "about#index"

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"
  
  delete "/logout", to: "sessions#destroy"

  get "/profile", to: "profiles#edit"
  #patch request is for editing and stuff
  patch "/profile/username", to: "profiles#update_username", as: :edit_username
  patch "/profile/password", to: "profiles#update_password", as: :edit_password
  delete "profile/delete", to: "profiles#delete_account", as: :delete_account

  get "/password/reset", to: "password_resets#new"
  post "/password/reset", to: "password_resets#create"

  get "/password/reset/edit", to: "password_resets#edit"
  patch "/password/reset/edit", to: "password_resets#update" 

end
