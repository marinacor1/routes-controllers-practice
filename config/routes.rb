Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'
  resources :courses #create, index and edit gives show message
  resources :teachers, only: [:index, :show] #this shows show page only
  get '/', to: 'welcome#index'
end
