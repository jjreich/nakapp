Rails.application.routes.draw do
  resources :searches
  resources :comments
  resources :flights
  resources :flight_turbulences
  resources :airborneflightcheckins
  resources :airborneflightdelays
  resources :departuretypes
  resources :arrivaltypes
  resources :debriefs
  resources :fboratings
  resources :fbos
  resources :aircrafts
  resources :airfields
  devise_for :users
  resources :users, :only => [:new, :create, :show, :edit, :index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

end
