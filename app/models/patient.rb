class Patient < ApplicationRecord
    validates :name, :birth_date, presence: true
    validates :cpf, uniqueness: true

    validates_cpf_format_of :cpf

    before_save :formatCPF

    private

    def formatCPF
        # value = CPF.new(cpf)
        self.cpf.formatted
        self.cpf.valid?
    end
end
