require 'rails_helper'

RSpec.describe "stock_prices/show", type: :view do
  before(:each) do
    @stock_price = assign(:stock_price, StockPrice.create!(
      :symbol => "Symbol",
      :open => "9.99",
      :high => "9.99",
      :low => "9.99",
      :close => "9.99",
      :volume => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Symbol/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
  end
end
