class Api::ItemsController < ApplicationController

  def index
    restaurant = Restaurant.find_by(id: params[:restaurant_id])
    render json: restaurant, include: [:menus => { :include =>
      [:sections => { :include =>
        [:items => { :include =>
          [:diets, :ingredients, :tastes, :favorites]
        }]
      }]
    }]

  end

  def show
    item = Item.find(params[:id])
    if logged_in?
      fave = Favorite.where(user_id: current_user.id, item_id: item.id)
      item_favorite = [item, fave[0]]
      render json: item_favorite
    else
      item = [item, '/register']
      render json: item
    end
  end

end
