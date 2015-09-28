Fabricator(:user) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  city { Faker::Address.city }
  country { Faker::Address.country }
end