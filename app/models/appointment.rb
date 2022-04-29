class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    validates :patient_id, :doctor_id, :starts_at, :ends_at, presence: true

    before_validation do
        end_time
        is_opening_hours
        valid_date
        is_available
        throw(:abort) if errors.present?
    end

    before_save :is_available
    
    private

    def end_time
        self.ends_at = starts_at + 30.minutes
    end

    def is_opening_hours
        starts = starts_at.strftime('%H:%M')
        ends = ends_at.strftime('%H:%M')
        if starts < '09:00' 
            errors.add(:base, 'The clinic does not work at this time.')
        elsif ('11:30'..'12:59').cover?(starts)
            errors.add(:base, 'The clinic does not work at this time.')
        elsif ('17:31'..'23:59').cover?(starts)
            errors.add(:base, 'The clinic does not work at this time.')
        end
    end

    def valid_date
        if ends_at < starts_at || starts_at < DateTime.now
            errors.add(:base, 'Invalid date')
        end
    end

    def is_available
        Appointment.all.each do |other|
            # A B A B
            if other.starts_at < ends_at && other.ends_at > ends_at && self != other
              errors.add(:base, 'Exists another appointment at this interval.')
            # B A B A
            elsif other.starts_at < starts_at && other.ends_at > starts_at && self != other
              errors.add(:base, 'Exists another appointment at this interval.')
            end
        end
    end

    # def is_available
    #     starts = starts_at.strftime('%d-%m-%Y %H:%M')
    #     appointment = Appointment.find_by(starts_at: starts)
    #     if appointment.present?
    #         errors.add(:base, 'It has another appointment at this time')
    #     end
    # end
end
