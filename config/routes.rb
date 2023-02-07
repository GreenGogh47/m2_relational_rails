Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'
  
  get '/libraries', to: 'libraries#index'
  get '/libraries/new', to: 'libraries#new'
  get '/libraries/:id', to: 'libraries#show'
  get '/libraries/:id/rare_books', to: 'library_rare_books#index'
  
  get '/rare_books', to: 'rare_books#index'
  get '/rare_books/:id', to: 'rare_books#show'
end
