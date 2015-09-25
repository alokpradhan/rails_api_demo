Address.destroy_all
SportsTeam.destroy_all
UserAddress.destroy_all
User.destroy_all

# Create 10 addresses
def seedAddresses
  10.times do

    Address.create(street: Faker::Address.street_name,
                   city: Faker::Address.city,
                   state: Faker::Address.state,
                   zip: Faker::Address.zip)

  end
end


# Create 5 sports teams
def seedTeams
  addresses = Address.all
  5.times do

    SportsTeam.create(name: Faker::Team.name,
                      address_id: addresses.sample.id,
                      sport: Faker::Team.sport,
                      stadium_size: Faker::Number.between(3000, 75000),
                      trophies: Faker::Number.between(1, 10))
  end
end

# Create 20 users
def seedUsers
  sportsteams = SportsTeam.all
  20.times do

    User.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                fav_sports_team_id: sportsteams.sample.id)
  end
end

# Assign addresses to users
def seedUserAddresses
  users = User.all
  addresses = Address.all
  users.each do |user|
    UserAddress.create(user_id: user.id,
                       address_id: addresses.sample.id)
  end
end

def seed
  seedAddresses
  seedTeams
  seedUsers
  seedUserAddresses
end

seed