class SessionsController < ApplicationController
  skip_before_action :ensure_logged_in

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      flash[:notice] = 'Welcome to our site!'
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:warning] = 'Login failed. Please Try Again.'
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
