class Api::RestaurantsController < ApplicationController
  def index
    render json: User.local_restaurants.to_json
  end
end
