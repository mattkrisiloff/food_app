class AddAttributesToTaker < ActiveRecord::Migration
  def change
    add_column :takers, :email, :string
    add_column :takers, :stripe_token, :string
    add_column :takers, :meal_id, :integer
    add_column :takers, :portions, :integer
  end
end
