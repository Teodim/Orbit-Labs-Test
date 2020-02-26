Rails.application.routes.draw do
  # resources :events
  # resources :reports
  # resources :comments
  # resources :users
  #Comments
  post 'comments', controller: 'comments', action: :create
  get 'comments', controller: 'comments', action: :index

  #Reports
  post 'reports', controller: 'reports', action: :create

  #Events
  get 'events', controller: 'events', action: :index



end
