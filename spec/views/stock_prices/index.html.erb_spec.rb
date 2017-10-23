require 'rails_helper'

RSpec.describe "stock_prices/index", type: :view do
  before(:each) do
    assign(:stock_prices, [
      StockPrice.create!(
        :symbol => "Symbol",
        :open => "9.99",
        :high => "9.99",
        :low => "9.99",
        :close => "9.99",
        :volume => 2
      ),
      StockPrice.create!(
        :symbol => "Symbol",
        :open => "9.99",
        :high => "9.99",
        :low => "9.99",
        :close => "9.99",
        :volume => 2
      )
    ])
  end

  it "renders a list of stock_prices" do
    render
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
