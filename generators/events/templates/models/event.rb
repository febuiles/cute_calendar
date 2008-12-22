class Event < ActiveRecord::Base
  def self.find_all_dates_by_month(month)
    self.all.select{ |e| e.month == month }.map{ |e| e.date}
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
