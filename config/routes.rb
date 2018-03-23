Rails.application.routes.draw do

  resources :properties

  root to: 'content#home'

  get "content/scrape"

end
