class Api::UsersController < ApplicationController

  def show
    render json: current_user.to_json
  end

end
