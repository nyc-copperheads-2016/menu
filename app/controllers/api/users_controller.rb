class Api::UsersController < ApplicationController

  def show
    render json: current_user, include: [:items => { :include =>
      [:section => { :include =>
      [:menu => { :include =>
      [:restaurant]
    }]}]}]
  end

end


# include: [:menus => { :include =>
#       [:sections => { :include =>
#         [:items => { :include =>
#           [:diets, :ingredients, :tastes, :favorites]
#         }]
