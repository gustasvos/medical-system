FactoryBot.define do
  factory :doctor do
    name { Faker::Name.name }
    crm { "MyString" }
    crm_uf { "SP" }
  end
end
