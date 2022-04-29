require 'rails_helper'
require 'factory_bot_rails'

RSpec.describe Appointment, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  context 'when created' do
    let(:patient){
      create(:patient)
      } 
    let(:doctor) {
      create(:doctor)
    }
    let(:appointment){
      create(:appointment, patient: patient, doctor: doctor)
    }
    it 'hour' do
      
      byebug
      expect(appointment.ends_at).to eq(appointment.starts_at + 30.minutes)
    end
  end
end
