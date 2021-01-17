Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  # # CREATE
  # get '/tasks/new', to: 'tasks#new', as: :new_list

  # post '/tasks/new', to: 'tasks#create'

  # get '/tasks/:id', to: 'tasks#show', as: :task

  resources :tasks

end
#
