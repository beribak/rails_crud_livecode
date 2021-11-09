Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/lost_pets", to: "lost_pets#index"

  # get "/lost_pets/new", to: "lost_pets#new", as: :lost_pet_new
  
  # get "/lost_pets/:id", to: "lost_pets#show", as: :lost_pet

  # post "/lost_pets", to: "lost_pets#create"

  # get "/lost_pets/:id/edit", to: "lost_pets#edit"

  # patch "/lost_pets/:id/", to: "lost_pets#update" 

  # delete "/lost_pets/:id", to: "lost_pets#destroy"

  resources :lost_pets
end
