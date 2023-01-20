# Ruby on Rails Notes

## Cmd Commands
 $ rails new [project_name] - Create new Rails Project
 $ rails s - start localhost server
 $ bundle - bundle all the gems in the Gemfile
 $ rails c - open the rails server terminal 

## Important folders
 * app
 * app > controllers
 * app > models
 * app > views
 * config
 * db > migrate

## Important files
 * Gemfile
 * views > layouts > application.html.erb
 * config > routes.rb

## Useful Ruby Commands
 * session
 * redirect_to [route_name]_path
 * render
 * flash

## Other
 * <% %> tag is for ruby code in the html.erb file
 * <%= %> tag is for things that are going to be printed in the browser
 * get "/about", to: "about#index" in the routes.rb file means: When a GET request for the /about dir is received, go to: controllers/about_controller.rb where the "AboutController" class is and a def index function inside. The index function points to: views/about/index.html.erb which is what will be rendered in the browser
 * instance variables @variable are visible in the html.erb files of their respective function