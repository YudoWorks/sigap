Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  
  get 'natural_disasters/:id/show' => 'natural_disasters#show'
  get 'natural_disasters/report-form' => 'natural_disasters#report_form'
  post 'natural_disasters/report' => 'natural_disasters#report'
  
  get 'login' => "users#login_form"
  get 'signin' => "users#signin_form"
  get 'users/:id' => "users#show"
  post 'login' => "users#login"
  post 'signin' => "users#signin"
  post 'logout' => "users#logout"

  post 'join/:naturalDisasterId/by/:userId' => "volunteers#join"
end
