FactoryGirl.define do
  factory :sports_team do
    sequence(:name){ |n| "team#{n}" }
    address_id 1
    stadium_size 1
    trophies 1
  end

end
