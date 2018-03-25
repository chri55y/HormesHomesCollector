Rails.application.routes.draw do


  resources :properties ,
            :property_notes

  root to: 'content#home'

  get "content/scrape"

end
