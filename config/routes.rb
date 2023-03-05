Rails.application.routes.draw do
  
  root 'home#homepage'
  
  get "/neste", to: 'home#neste'
  get "/siste", to: "home#siste"

end
