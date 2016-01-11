class Api::ItemsController < ApplicationController

  def index
    restaurant = Restaurant.find_by(id: params[:restaurant_id])
    render json: restaurant, include: [:menus => { :include =>
      [:sections => { :include =>
        [:items => { :include =>
          [:diets, :ingredients, :tastes]
        }]
      }]
    }]
    # render json: restaurant.menus.first.sections, include: [:items => { :include =>
    # [:diets, :ingredients, :tastes] } ]
    # render json: restaurant.menus.first.items, include: ['ingredients', 'diets', 'tastes']

  end

  def show
    item = Item.find_by(id: params[:id])
    render json: item.to_json
  end

end
