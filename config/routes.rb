Rails.application.routes.draw do
  # GET /about and go to AboutController class 
  # in index function which points to dir: "app/views/about/index.html.erb" 
  # and this is the page we'll see
  root to: "main#index", as: :root # or instead of root to:-> get "/", to:

  get "/about", to: "about#index", as: :about # the routes name

  get "/sign_up", to: "registrations#new"
  post "/sign_up", to: "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in", to: "sessions#create"
  
  delete "/logout", to: "sessions#destroy"
end
