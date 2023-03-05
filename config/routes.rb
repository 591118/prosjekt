Rails.application.routes.draw do
  
  resources :teksts

  root 'home#homepage'
  
  get "/neste", to: 'home#neste'
  post "/neste", to: "home#opprett", as: :nestepost
  
  get "/siste/:tekst", to: "home#siste", as: :siste_path
end
