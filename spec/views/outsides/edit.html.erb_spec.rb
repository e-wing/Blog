require 'rails_helper'

RSpec.describe "outsides/edit", type: :view do
  before(:each) do
    @outside = assign(:outside, Outside.create!())
  end

  it "renders the edit outside form" do
    render

    assert_select "form[action=?][method=?]", outside_path(@outside), "post" do
    end
  end
end
