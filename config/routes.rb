Rails.application.routes.draw do
  resources :departuretypes
  resources :arrivaltypes
  resources :debriefs
  resources :fboratings
  resources :fbos
  resources :aircrafts
  resources :airfields
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

end
