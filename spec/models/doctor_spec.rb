require 'rails_helper'

RSpec.describe Doctor, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context 'when created' do
    it 'crm' do
      doctor = create(:doctor)
      expect(doctor.crm.length).to be(8)
    end

  end

end
