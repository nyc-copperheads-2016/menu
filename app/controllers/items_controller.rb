class ItemsController < ApplicationController

  def index
    menu = Menu.find_by(id: params[:menu_id])

    render json: menu.items.to_json
  end

  def show
    item = Item.find_by(id: params[:id])

    render json: item.to_json
  end

end


