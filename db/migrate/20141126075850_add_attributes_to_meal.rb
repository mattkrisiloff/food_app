class AddAttributesToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :title, :string
    add_column :meals, :slots, :integer
    add_column :meals, :date, :datetime
    add_column :meals, :price, :float
  end
end
