Rails.application.routes.draw do
  get 'schedule/index'

  resources :plants
  
  root 'schedule#index'
end
