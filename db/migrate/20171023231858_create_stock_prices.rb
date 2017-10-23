class CreateStockPrices < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_prices do |t|
      t.string :symbol
      t.date :date
      t.decimal :open
      t.decimal :high
      t.decimal :low
      t.decimal :close
      t.integer :volume

      t.timestamps
    end
  end
end
