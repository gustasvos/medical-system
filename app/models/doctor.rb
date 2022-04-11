class Doctor < ApplicationRecord
    validates :name, :crm, :crm_uf, presence: true
    validates :crm, uniqueness: { scope: :crm_uf }

    before_destroy :has_appointment, prepend: true

    # before_destroy do
    #     has_appointment
    #     throw(:abort) if errors.present?
    #   end
    
    # prepend: true -> serve para checar se retorno do metodo é true
    # nesse caso se usarmos o .destroyed? retorna true ou false de acordo com o prepend
    # devemos validar no controller

    before_validation do
        updated_CRM
    end
    
    private

    def updated_CRM
        self.crm = crm + crm_uf
    end

    def has_appointment
        appointment = Appointment.find_by(doctor_id: id)
        if appointment.present?
            self.errors.add(:base, 'It is not possible to delete a doctor with appointment(s).')
            throw :abort
        end
    end
end
