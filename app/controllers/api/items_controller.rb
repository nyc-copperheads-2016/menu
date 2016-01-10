class Api::ItemsController < ApplicationController

  def index
    restaurant = Restaurant.find_by(id: params[:restaurant_id])

    render json: restaurant.menus.first.items.to_json
  end

  def show
    item = Item.find_by(id: params[:id])

    render json: item.to_json
  end

end


