class Meal < ActiveRecord::Base
  has_many :takers
  
  def self.create_sample
    self.create(title: "Sample Food", date: Time.now, price: 7.50, slots: 5, description: "This is delicious.")
  end
end
