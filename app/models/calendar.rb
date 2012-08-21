class Calendar < ActiveRecord::Base
  MONTHS = ['Thout', 'Paopi', 'Hathor', 'Koiak', 'Tobi', 'Meshir', 'Paremhat', 'Paremoude', 'Pashons', 'Paoni', 'Apip', 'Mesori']
  SEASONS = ['Akhet', 'Peret', 'Shemu']
  attr_accessible :day, :month, :year, :nile_level, :occured


  def month_name
    MONTHS[self.month-1]
  end

  def season_name
    SEASONS[(self.month/4.0).ceil-1]
  end
end
