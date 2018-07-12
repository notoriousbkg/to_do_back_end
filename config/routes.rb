Rails.application.routes.draw do

get'todo/index', to:'todo#index'
get'todo/AddTask', to:'todo#AddTask'
get'todo/create', to:'todo#create'
get'todo/show/:id', to:'todo#show'
get 'todo/edit/:id', to: 'todo#edit'
get 'todo/destroy/:id', to: 'todo#destroy'

end
