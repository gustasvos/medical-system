FactoryBot.define do
  factory :appointment do
    starts_at { "2023-05-05 13:00:00" }
    ends_at { "2023-05-05 13:30:00" }
    patient_id { 2 }
    doctor_id { 5 }
  end
end
