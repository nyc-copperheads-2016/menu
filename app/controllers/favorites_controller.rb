class FavoritesController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    fave = current_user.favorites.build(item_id: params[:item_id])
    if fave.save
      puts "Saved to favorites!"
    else
      puts "Unable to add to favorites. Please try again later!"
    end
  end

  def destroy
    fave = Favorite.find(params[:id])
    if fave.destroy
      puts "Removed from favorites!"
    else
      puts "Unable to remove from favorites"
    end

  end
end
