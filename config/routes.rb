Rails.application.routes.draw do

  root to: 'lectures#index'

  scope only: [:index, :show] do
    resources :lectures
    resources :assignments
    resources :resources
  end

  resources :readings, only: :index


  admin_for :users, :courses, :students, :lectures, :readings, :assignments

  # TODO: This should have routes but no interface. How to configure?
  admin_for :images

end