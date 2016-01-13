class Api::UsersController < ApplicationController

  def show
    render json: current_user, include: [:items => { :include =>
      [:section => { :include =>
      [:menu => { :include =>
      [:restaurant]
    }]}]}]
  end

end
