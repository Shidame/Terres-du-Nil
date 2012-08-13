class GameController < ApplicationController
  layout "game"
  def index
    @map = Tile.where("city_id = ?", current_city).order("x ASC").order("y ASC")
  end
end
