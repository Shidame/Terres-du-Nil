class City < ActiveRecord::Base
  belongs_to :user
  has_many :tiles
  has_many :buildings, through: :tiles
  has_many :building_types, through: :buildings
  attr_accessible :name
end
