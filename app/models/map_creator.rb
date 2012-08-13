class MapCreator
  MAX_WIDTH = 25
  MAX_HEIGHT = 10

  def initialize(city)
    @city = city
  end

  def create!
    tiles = []
    MAX_HEIGHT.times do |x|
      MAX_WIDTH.times do |y|
        tiles.push "(#{x}, #{y}, #{@city.id}, '#{Time.now}')"
      end
    end

    sql = "INSERT INTO tiles (`x`, `y`, `city_id`, `created_at`) VALUES #{tiles.join(", ")}"
    ActiveRecord::Base.connection.execute sql
  end
end
