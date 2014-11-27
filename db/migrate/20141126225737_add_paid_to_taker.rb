class AddPaidToTaker < ActiveRecord::Migration
  def change
    add_column :takers, :paid, :integer
  end
end
