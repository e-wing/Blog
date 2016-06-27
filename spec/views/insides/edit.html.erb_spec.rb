require 'rails_helper'

RSpec.describe "insides/edit", type: :view do
  before(:each) do
    @inside = assign(:inside, Inside.create!())
  end

  it "renders the edit inside form" do
    render

    assert_select "form[action=?][method=?]", inside_path(@inside), "post" do
    end
  end
end
