require 'rails_helper'

RSpec.describe "patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new(
      id: 1,
      name: "MyString",
      cpf: "MyString"
    ))
  end

  it "renders new patient form" do
    render

    assert_select "form[action=?][method=?]", patients_path, "post" do

      assert_select "input[name=?]", "patient[id]"

      assert_select "input[name=?]", "patient[name]"

      assert_select "input[name=?]", "patient[cpf]"
    end
  end
end
