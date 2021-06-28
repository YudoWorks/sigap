class UsersController < ApplicationController
  before_action :not_authorized, only:[:signin_form, :sign, :login_form, :login]
  before_action :authorized, only:[:logout]

  def signin_form
    @user = User.new
  end

  def signin
    @user = User.new(
      name: params[:name], 
      password: params[:password], 
      email: params[:email],
      isAdmin: FALSE
    )

    if @user.save
      flash[:notice] = "User successfully sign in"
      session[:user_id] = @user.id
      redirect_to("/")
    else
      render("users/signin_form")
    end
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.password == params[:password]
      flash[:notice] = "User successfully log in"
      session[:user_id] = @user.id
      redirect_to("/")
    else
      flash[:notice] = "Email or password is uncorrect"
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = FALSE
    flash[:notice] = "User successfully log out"
    redirect_to('/')
  end
end
