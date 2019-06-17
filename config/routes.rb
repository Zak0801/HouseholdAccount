Rails.application.routes.draw do
  get 'user/new' => "user#new"

  root 'item#new'
  get 'item/index' => "item#index"
  post 'item/create' => "item#create"
  get 'item/:id/edit' => "item#edit_form"
  post 'item/:id/edit' => "item#edit"
  post 'item/:id/destroy' => "item#destroy"
  get '/item/month/:using_month' => "item#month"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
