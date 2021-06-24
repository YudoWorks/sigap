Rails.application.routes.draw do
  get 'login' => "users#login_form"
  get 'signin' => "users#signin_form"
  post 'login' => "users#login"
  post 'signin' => "users#signin"
end
