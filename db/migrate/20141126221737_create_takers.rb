class CreateTakers < ActiveRecord::Migration
  def change
    create_table :takers do |t|

      t.timestamps
    end
  end
end
