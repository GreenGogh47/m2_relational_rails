Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'
  
  get '/libraries', to: 'libraries#index'
  get '/libraries/new', to: 'libraries#new'
  post '/libraries', to: 'libraries#create'
  get '/libraries/:id', to: 'libraries#show'
  patch '/libraries/:id', to: 'libraries#update'
  get '/libraries/:id/edit', to: 'libraries#edit'
  get '/libraries/:id/rare_books', to: 'library_rare_books#index'
  
  get '/rare_books', to: 'rare_books#index'
  get '/rare_books/:id', to: 'rare_books#show'
end
