Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # read
  # Get all taks
  get 'tasks', to: 'tasks#index', as: :tasks

  # create
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new'

  # edit
  get 'tasks/:id/edit', to: 'tasks#edit'

  # read
  # Get one taks
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
