require 'rails_helper'

RSpec.describe "stock_prices/edit", type: :view do
  before(:each) do
    @stock_price = assign(:stock_price, StockPrice.create!(
      :symbol => "MyString",
      :open => "9.99",
      :high => "9.99",
      :low => "9.99",
      :close => "9.99",
      :volume => 1
    ))
  end

  it "renders the edit stock_price form" do
    render

    assert_select "form[action=?][method=?]", stock_price_path(@stock_price), "post" do

      assert_select "input[name=?]", "stock_price[symbol]"

      assert_select "input[name=?]", "stock_price[open]"

      assert_select "input[name=?]", "stock_price[high]"

      assert_select "input[name=?]", "stock_price[low]"

      assert_select "input[name=?]", "stock_price[close]"

      assert_select "input[name=?]", "stock_price[volume]"
    end
  end
end
