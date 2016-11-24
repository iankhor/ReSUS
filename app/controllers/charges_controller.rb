class ChargesController < ApplicationController

def new
end

def create
  # Amount in cents
  @amount = params[:amount]
  @quote = params[:quote_id]

  Quote.find_by(id: @quote).payment_status = 'Paid'

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'aud'
  )

  redirect_to dashboard_index_path

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end


end
