class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    validates :patient_id, :doctor_id, :starts_at, :ends_at, presence: true

    before_validation do
        is_opening_hours
        throw(:abort) if errors.present?
    end

    private

    def valid_date
        if ends_at < starts_at
            errors.add(:base, 'Invalid date')
        end
    end
end
