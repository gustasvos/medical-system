FactoryBot.define do
  factory :patient do
    name { Faker::Name.name }
    birth_date { Faker::Date.between(from: '1900-01-01', to: Date.today) }
    cpf { CPF.generate }
  end
end
