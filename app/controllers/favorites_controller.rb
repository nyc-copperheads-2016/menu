class FavoritesController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def create
    fave = current_user.favorites.build(item_id: params[:item_id])
    if fave.save
      flash[:notice] = "Saved to favorites!"
    end
  end
end
