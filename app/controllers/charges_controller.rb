class ChargesController < ApplicationController
  def new
  end
  
  def create
    # Amount in cents
    @price = params[:price]
    @portions = params[:portions]
    @amount = @price.to_i*@portions.to_i
    @meal_id = params[:meal_id]
    
    customer = Stripe::Customer.create(
       :email => "example@stripe.com",
       :card => params[:stripeToken]
    )
    
    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'Rails Stripe Customer',
      :currency => 'usd'
    )
    
    @meal = Meal.find_by(id: @meal_id)
    @meal.slots = @meal.slots.to_i - @portions.to_i
    @meal.save
    @taker = Taker.create(email: params[:stripeEmail], stripe_token: params[:stripeToken], paid: charge[:amount], portions: @portions, meal_id: @meal_id)
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
  
end
