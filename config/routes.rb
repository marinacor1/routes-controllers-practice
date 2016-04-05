Rails.application.routes.draw do
  get '/students', to: 'students#index'
  resources :courses
  resources :teachers, path: '/teachers/show'
  resources :teachers, path: '/teachers/index'
end
