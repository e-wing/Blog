require 'rails_helper'

RSpec.describe "outsides/index", type: :view do
  before(:each) do
    assign(:outsides, [
      Outside.create!(),
      Outside.create!()
    ])
  end

  it "renders a list of outsides" do
    render
  end
end
