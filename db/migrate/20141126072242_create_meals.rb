class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :title
      t.text :description
      t.integer :slots
      t.datetime :date

      t.timestamps
    end
  end
end
