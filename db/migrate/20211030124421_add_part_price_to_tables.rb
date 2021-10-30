class AddPartPriceToTables < ActiveRecord::Migration[6.1]
  def change
    add_column :tables, :price, :string
  end
end
