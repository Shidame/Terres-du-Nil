class DayForward
  def self.perform
    last = Calendar.last
    if last
      if last.day == 30
        day = 1
        if last.month == 12
          month = 1
          year = last.year+1
        else
          month = last.month+1
          year = last.year
        end
      else
        day = last.day+1
        month = last.month
        year = last.year
      end
    else
      day = 1
      month = 1
      year = 1
    end
    current = Calendar.create(day: day, month: month, year: year)
    Juggernaut.publish("date_changed", "#{current.day} #{current.month_name} #{current.year}")
  end
end
