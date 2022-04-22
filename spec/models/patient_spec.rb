require 'rails_helper'

RSpec.describe Patient, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context 'when created' do
    it 'cpf' do
      patient = create(:patient)
      expect(patient.cpf).to include('.')
    end
    
    it 'birth date' do
      patient = create(:patient)
      expect(patient.birth_date).to be <= DateTime.now
    end
    
  end
end
