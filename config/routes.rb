Rails.application.routes.draw do
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
  devise_for :users, controllers: { sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

end
