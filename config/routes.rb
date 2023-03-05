Rails.application.routes.draw do
  
  root 'home#homepage'
  
  get "/neste", to: 'home#neste'
  post "/neste", to: "home#opprett"
  
  get "/siste", to: "home#siste"

end
