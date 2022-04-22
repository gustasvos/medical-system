class Patient < ApplicationRecord
    validates :name, :birth_date, :cpf, presence: true
    validates :cpf, uniqueness: true

    validates_cpf_format_of :cpf

    before_validation :formatCPF, :birth_date

    private

    def formatCPF
        value = CPF.new(cpf)
        self.cpf = value.formatted
        value.valid?
    end

    def valid_birth
        if birth_date > DateTime.now
            errors.add(:base, 'Invalid birth date')
        end
    end
end