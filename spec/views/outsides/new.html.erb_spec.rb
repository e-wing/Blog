require 'rails_helper'

RSpec.describe "outsides/new", type: :view do
  before(:each) do
    assign(:outside, Outside.new())
  end

  it "renders new outside form" do
    render

    assert_select "form[action=?][method=?]", outsides_path, "post" do
    end
  end
end
