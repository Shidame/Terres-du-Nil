class BuildingBuilder
  def initialize(user, city, building_type_id, tile_ids)
    @user = user
    @city = city
    @building_type = BuildingType.find(building_type_id)
    @tiles = Tile.where("city_id = ?", @city).where(id: tile_ids)
  end

  def build!
    User.transaction do
      raise Tile::NotBuildable unless tiles_are_buildable?
      raise Tile::NotAdjacent unless tiles_are_adjacent?

      create_building!
    end
  end

  def create_building!
    building = Building.new

    building.building_type = @building_type
    building.city_id = @city.id

    building.save!

    @tiles.update_all(building_id: building.id)

    building
  end

  def tiles_are_buildable?
    @tiles.all? do |tile|
      tile.building_id == nil
    end
  end

  def tiles_are_adjacent?
    x_list = @tiles.collect {|tile| tile.x}
    y_list = @tiles.collect {|tile| tile.y}
    x_sum = x_list.sum/@building_type.height
    y_sum = y_list.sum/@building_type.width

    check_x = arithmetic_progression_sum(x_list) == x_sum
    check_y = arithmetic_progression_sum(y_list) == y_sum

    check_x == check_y
  end

  def arithmetic_progression_sum(term_list)
    term_list.length/2*(term_list.min+term_list.max)
  end
end
