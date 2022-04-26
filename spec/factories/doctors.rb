FactoryBot.define do
  factory :doctor do
    name { Faker::Name.name }
    crm { rand.to_s[2..7] }
    crm_uf { "SP" }
  end
end
