Rails.application.routes.draw do
  get "/scientists/new_mission", to: "scientists#new_mission", as: :scientists_new_mission
  resources :missions
  resources :planets
  resources :scientists
  #get "/scientists/new_mission", to: "scientists#new_mission", as: :scientists_new_mission
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
