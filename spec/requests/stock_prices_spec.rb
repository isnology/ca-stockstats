require 'rails_helper'

RSpec.describe "StockPrices", type: :request do
  describe "GET /stock_prices" do
    it "works! (now write some real specs)" do
      get stock_prices_path
      expect(response).to have_http_status(200)
    end
  end
end
