class WelcomeController < ApplicationController
	before_filter :allow_iframe_requests

	def allow_iframe_requests
	  response.headers.delete('X-Frame-Options')
	end

  def index
  d = Date.parse("31-10-2014")
  next_year = Date.today.year
  wed_day = "#{d.day}-#{d.month}-#{next_year}"
  @days = (Date.parse(wed_day) - Date.today).to_i
  end
end
