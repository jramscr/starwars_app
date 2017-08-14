Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#people'

  get 'films', to: 'main#films'
  get 'people', to: 'main#people'
  get 'planets', to: 'main#planets'
  get 'species', to: 'main#species'
  get 'starships', to: 'main#starships'
  get 'vehicles', to: 'main#vehicles'
end
