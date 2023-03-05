Rails.application.routes.draw do
  
  root 'home#index'
  
  get "/neste", to: 'home#neste'


end
