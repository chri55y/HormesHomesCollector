Rails.application.routes.draw do

  resources :properties
  root to: 'content#home'

end
