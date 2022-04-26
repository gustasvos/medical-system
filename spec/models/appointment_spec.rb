require 'rails_helper'

RSpec.describe Appointment, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  context 'when created' do
    it 'hour' do
      appointment = create(:appointment)
    end
  end
end
