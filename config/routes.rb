Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  
  get 'natural_disasters/:id/show' => 'natural_disasters#show'
  get 'natural_disasters/report-form' => 'natural_disasters#report-form'
  post 'natural_disasters/report' => 'natural_disasters#report'
end
