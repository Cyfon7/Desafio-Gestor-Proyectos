Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/create'
  get 'projects/dashboard'
  get 'projects/project_creation_form'
  get 'projects/search_bar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'projects#index'
end
