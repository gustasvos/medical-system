FactoryBot.define do
  factory :appointment do
    starts_at { "2022-04-05 11:54:02" }
    ends_at { "2022-04-05 11:54:02" }
    patient_id { 1 }
    doctor_id { 1 }
  end
end
