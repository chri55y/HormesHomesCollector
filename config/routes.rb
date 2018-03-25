Rails.application.routes.draw do

  resources :property_notes
  resources :properties

  root to: 'content#home'

  get "content/scrape"

end
