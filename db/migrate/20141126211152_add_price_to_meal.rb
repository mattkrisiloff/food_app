class AddPriceToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :price, :decimal, precision: 5, scale: 2
  end
end
