Rottenpotatoes::Application.routes.draw do
  resources :movies
  #map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movies/:id/same_director' => 'movies#same_director', :as => :same_director
=begin
  resources :movies do
    get 'same_director', to: 'movies#same_director'
  end
  root :to => redirect('/movies')
=end
end
