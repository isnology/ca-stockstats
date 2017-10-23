json.extract! stock_price, :id, :symbol, :date, :open, :high, :low, :close, :volume, :created_at, :updated_at
json.url stock_price_url(stock_price, format: :json)
