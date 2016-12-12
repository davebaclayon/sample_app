Rails.application.routes.draw do
  get 'users/new'

 ########
 # Convert this auto-generated stuff
 ########
 # get 'static_pages/home'

 # get 'static_pages/help'




 ########
 # To this:
 ########

 get     "home"      => "static_pages#home", as: "home"
 get     "help"      => "static_pages#help", as: "help"

 get     "signup"    => "users#new", as: "signup"

  root 'static_pages#home' #accesses a def in static_pages in controller

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
