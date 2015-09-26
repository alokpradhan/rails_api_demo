class SportsTeam < ActiveRecord::Base
  belongs_to :address
  has_many   :users
end
