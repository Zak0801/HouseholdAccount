Rails.application.routes.draw do
  root 'home#top'

  get '/item/new' => "item#new"
  get '/item/index' => "item#index"
  post '/item/create' => "item#create"
  get '/item/:id/edit' => "item#edit_form"
  post '/item/:id/edit' => "item#edit"
  post '/item/:id/destroy' => "item#destroy"
  get '/item/month/:using_month' => "item#month"

  get '/user/new' => "user#new"
  post '/user/create' => "user#create"
  get '/login' => "user#login_form"
  post '/login' => "user#login"
  post '/logout' => "user#logout"
  get '/user/edit' => "user#edit_form"
  post '/user/edit' => "user#edit"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
