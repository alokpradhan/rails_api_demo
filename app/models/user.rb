class User < ActiveRecord::Base
  belongs_to  :sports_team
  has_many    :user_addresses
  has_many    :addresses, through: :user_addresses
end
