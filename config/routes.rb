Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# users routes
 get '/signup' => 'users#new'
 post '/users' => 'users#create'
 get '/users/:id' => 'users#show'
 get '/users/:id/edit' => 'users#edit'
 patch '/users/:id' => 'users#update'

 # sessions routes
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/logout' => 'sessions#destroy'

# posts routes
get '/' => 'posts#index'
get '/posts' => 'posts#index'
get '/posts/new' => 'posts#new'
post '/posts' => 'posts#create'
get '/posts/:id' => 'posts#show'
get '/posts/:id/edit' => 'posts#edit'
patch '/posts/:id' => 'posts#update'
delete '/posts/:id' => 'posts#destroy'
end
