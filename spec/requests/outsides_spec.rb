require 'rails_helper'

RSpec.describe "Outsides", type: :request do
  describe "GET /outsides" do
    it "works! (now write some real specs)" do
      get outsides_path
      expect(response).to have_http_status(200)
    end
  end
end
