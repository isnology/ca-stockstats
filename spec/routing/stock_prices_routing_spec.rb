require "rails_helper"

RSpec.describe StockPricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stock_prices").to route_to("stock_prices#index")
    end

    it "routes to #new" do
      expect(:get => "/stock_prices/new").to route_to("stock_prices#new")
    end

    it "routes to #show" do
      expect(:get => "/stock_prices/1").to route_to("stock_prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stock_prices/1/edit").to route_to("stock_prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stock_prices").to route_to("stock_prices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_prices/1").to route_to("stock_prices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_prices/1").to route_to("stock_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_prices/1").to route_to("stock_prices#destroy", :id => "1")
    end

  end
end
