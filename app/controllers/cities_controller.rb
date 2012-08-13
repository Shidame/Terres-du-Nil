class CitiesController < GameController
  layout "game"
  def index
    @cities = current_user.cities
  end

  def show
    @city = City.find(params[:id])
    current_cities_ids = current_user.city_ids
    if current_cities_ids.include? @city.id
      session[:current_city_id] = @city.id
    end
    redirect_to game_path
  end
end
