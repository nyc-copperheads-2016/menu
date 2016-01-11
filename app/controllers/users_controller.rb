class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = "Congratulations!"
      # render json: user
      redirect_to root_path
    else
      render :new
      # render json: {message: user.errors.full_messages.join(' ')}, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
