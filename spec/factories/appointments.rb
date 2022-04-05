FactoryBot.define do
  factory :appointment do
    id { 1 }
    starts_at { "2022-04-05 11:25:35" }
    ends_at { "2022-04-05 11:25:35" }
    patient_id { 1 }
    doctor_id { 1 }
  end
end
