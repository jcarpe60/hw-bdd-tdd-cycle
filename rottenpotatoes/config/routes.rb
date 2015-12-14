Rottenpotatoes::Application.routes.draw do
  resources :movies do
    get 'same_director', to: 'movies#same_director'
  end
  root :to => redirect('/movies')
 
end
