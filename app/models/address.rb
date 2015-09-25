class Address < ActiveRecord::Base
  has_many :user_addresses
  has_many :users, through: :user_addresses #not working
  has_one :sports_team
end
