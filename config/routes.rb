Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats
  # get 'flats', to: 'flats#index'

  # # create new
  # post 'flats', to: 'flats#create'
  # get 'flats/new', to: 'flats#new', as: :new_task

  # # delete
  # delete 'flats/:id', to: 'flats#destroy'

  # # edit
  # get 'flats/:id/edit', to: 'flats#edit', as: :edit_task
  # patch 'flats/:id', to: 'flats#update'

  # get 'flats/:id', to: 'flats#show', as: :task
end
