class Patient < ApplicationRecord
    validates :name, :birth_date, :cpf, presence: true
    validates :cpf, uniqueness: true
end
