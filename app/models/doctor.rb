class Doctor < ApplicationRecord
    validates :name, :crm, :crm_uf, presence: true
    validates :crm, uniqueness: { scope: :crm_uf }

    before_validation do
        Updated_CRM
    end
    
    private

    def Updated_CRM
        self.crm = crm + crm_uf
    end
end
