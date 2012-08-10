class BuildingType < ActiveRecord::Base
  has_many :buildings
  attr_accessible :description, :height, :name, :width
end
