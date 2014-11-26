class StaticPagesController < ApplicationController
  def homepage
    @meals = Meal.all
  end
end
