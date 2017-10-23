require 'rails_helper'

RSpec.describe "stock_prices/new", type: :view do
  before(:each) do
    assign(:stock_price, StockPrice.new(
      :symbol => "MyString",
      :open => "9.99",
      :high => "9.99",
      :low => "9.99",
      :close => "9.99",
      :volume => 1
    ))
  end

  it "renders new stock_price form" do
    render

    assert_select "form[action=?][method=?]", stock_prices_path, "post" do

      assert_select "input[name=?]", "stock_price[symbol]"

      assert_select "input[name=?]", "stock_price[open]"

      assert_select "input[name=?]", "stock_price[high]"

      assert_select "input[name=?]", "stock_price[low]"

      assert_select "input[name=?]", "stock_price[close]"

      assert_select "input[name=?]", "stock_price[volume]"
    end
  end
end
