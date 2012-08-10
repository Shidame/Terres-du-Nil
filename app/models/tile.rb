class Tile < ActiveRecord::Base
  belongs_to :city
  belongs_to :building
  has_one :building_type, through: :building
  attr_accessible :x, :y
end
