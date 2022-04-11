class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    validates :patient_id, :doctor_id, :starts_at, :ends_at, presence: true

    
end
