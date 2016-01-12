class FavoritesController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    fave = current_user.favorites.build(item_id: params[:item_id])
    if fave.save
      flash[:notice] = "Saved to favorites!"
    else
      flash[:notice] = "Unable to add to favorites. Please try again later!"
    end
  end

  def destroy
    fave = Favorite.find(params[:id])
    if fave.destroy
      flash[:notice] = "Removed from favorites!"
    else
      flash[:notice] = "Unable to remove from favorites"
    end

  end
end
