class Guest < ActiveRecord::Base
  belongs_to :invitee
end
