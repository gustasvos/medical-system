require 'rails_helper'

RSpec.describe Doctor, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "Register a doctor" do
    doctor = create(:doctor)
    expect(doctor.crm_uf.length).to eq(2)
  end
end
