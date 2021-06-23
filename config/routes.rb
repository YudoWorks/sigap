Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  
  get 'natural_disasters/:id/show' => 'natural_disasters#show'
end
