require 'rails_helper'

RSpec.describe "insides/index", type: :view do
  before(:each) do
    assign(:insides, [
      Inside.create!(),
      Inside.create!()
    ])
  end

  it "renders a list of insides" do
    render
  end
end
