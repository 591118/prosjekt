Rails.application.routes.draw do
  
  resources :teksts

  root 'home#homepage'
  
  get "/neste", to: 'home#neste'
  post "/neste", to: "home#opprett"
  
  get "/siste/:id", to: "home#siste", as: :siste
end
