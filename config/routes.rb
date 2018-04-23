Rails.application.routes.draw do
  # set root page to index method in root controller
  root to: 'root#index'

  # set workout routes
  resources :workouts
end
