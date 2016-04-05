Rails.application.routes.draw do
  get '/students', to: 'students#index'
  resources :courses #create, index and edit gives show message
  resources :teachers, only: [:index, :show] #this shows show page only
end
