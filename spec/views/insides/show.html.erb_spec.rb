require 'rails_helper'

RSpec.describe "insides/show", type: :view do
  before(:each) do
    @inside = assign(:inside, Inside.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
