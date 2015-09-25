class SportsTeam < ActiveRecord::Base
  belongs_to :address
  has_many   :fans, as: :users
end
