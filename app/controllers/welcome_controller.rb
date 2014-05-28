class WelcomeController < ApplicationController
  def index
  d = Date.parse("31-10-2014")
  next_year = Date.today.year
  wed_day = "#{d.day}-#{d.month}-#{next_year}"
  @days = (Date.parse(wed_day) - Date.today).to_i
  end
end
