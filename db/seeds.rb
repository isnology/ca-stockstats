# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

msft_prices = HTTParty.get('https://www.alphavantage.co/query?function=TIME_SERIES_WEEKLY&symbol=MSFT&apikey=demo')

msft_prices['Weekly Time Series'].each do |date_string, prices|
  StockPrice.create!(symbol: 'MSFT', date: date_string, open: prices['1. open'], high: prices['2. high'], low:
                             prices['3. low'], close: prices['4. close'], volume: prices['5. volume'])
end