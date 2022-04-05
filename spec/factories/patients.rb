FactoryBot.define do
  factory :patient do
    id { 1 }
    name { "MyString" }
    birth_date { "2022-04-05" }
    cpf { "MyString" }
  end
end
