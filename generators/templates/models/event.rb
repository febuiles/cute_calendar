class Event < ActiveRecord::Base
  # checks if an event exists on a given date
  def self.special_date?(date)
    self.all.select{ |ev| ev.date == date}.size > 0
  end

  def year
    date.year
  end
  
  def month
    date.month
  end

  def day
    date.day
  end
end
