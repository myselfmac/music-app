Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'index', to: 'pages#index'
  get 'SignUp', to: 'pages#Signup'
  get 'login', to: 'pages#Search'
  get "/search" => redirect("http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=cher&api_key=1ca2cf614eeaa185c2b61753b434b599&format=json")
end
