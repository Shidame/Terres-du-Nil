class CityCreator
  def initialize(user)
    @user = user
  end

  def create!
    nb_cities = @user.cities.count
    City.transaction do
      city = City.new
      city.user = @user
      city.name = "#{@user.username}-#{nb_cities+1}"
      city.save!

      map = MapCreator.new(city)
      map.create!

      city
    end
  end
end
