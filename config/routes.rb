Rails.application.routes.draw do
  get 'resources/index'
  get 'resources/show'
  get 'resources/new'
  get 'resources/edit'
  get 'welcome/index'
  get 'welcome/about'
  resources 'resources'

  root 'welcome#index'
end
