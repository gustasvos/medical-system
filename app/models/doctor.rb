class Doctor < ApplicationRecord
    validates :name, :crm, :crm_uf, presence: true
    validates :crm, uniqueness: true
end
