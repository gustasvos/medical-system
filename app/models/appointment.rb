class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    validates :patient_id, :doctor_id, :starts_at, :ends_at, presence: true

    # before_validation :is_opening_hours?

    # private
    
    # def is_opening_hours?
    #     start_time = starts_at.strftime('%H:%M')
    #     end_time = ends_at.strftime('%H:%M')

    #     if (start_time < '09:00' || start_time > '18:00') && (end_time >= '18:01')
    #         errors.add(:base, 'Out of opening hours')
    #         throw :abort
    #     elsif ('12:00..12:59').cover?(start_time)
    #         errors.add(:base, 'Out of opening hours')
    #         throw :abort
    #     end
    # end
end
