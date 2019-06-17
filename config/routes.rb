Rails.application.routes.draw do
  root 'item#new'
  get 'item/index' => "item#index"
  post 'item/create' => "item#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
