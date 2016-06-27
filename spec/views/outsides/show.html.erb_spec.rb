require 'rails_helper'

RSpec.describe "outsides/show", type: :view do
  before(:each) do
    @outside = assign(:outside, Outside.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
