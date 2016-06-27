require 'rails_helper'

RSpec.describe "insides/new", type: :view do
  before(:each) do
    assign(:inside, Inside.new())
  end

  it "renders new inside form" do
    render

    assert_select "form[action=?][method=?]", insides_path, "post" do
    end
  end
end
