class Building < ActiveRecord::Base
  has_one :tile
  belongs_to :building_type
end
