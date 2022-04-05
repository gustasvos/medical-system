require 'rails_helper'

RSpec.describe "doctors/index", type: :view do
  before(:each) do
    assign(:doctors, [
      Doctor.create!(
        name: "Name",
        crm: "Crm",
        crm_uf: "Crm Uf"
      ),
      Doctor.create!(
        name: "Name",
        crm: "Crm",
        crm_uf: "Crm Uf"
      )
    ])
  end

  it "renders a list of doctors" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Crm".to_s, count: 2
    assert_select "tr>td", text: "Crm Uf".to_s, count: 2
  end
end
