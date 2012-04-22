require 'rubygems'
require 'sinatra'
require 'stripe'

Stripe.api_key = "STRIPE_API_PRIVATE_KEY"
set :views, File.dirname(__FILE__) + "/views"

def is_number?(i)
  true if Float(i) rescue false
end

get "/" do
  erb :form
end

post "/pay" do
  if is_number?(params[:amount].to_f)
    amount = ((params[:amount].to_f)*100).to_i
    @charge = Stripe::Charge.create(
      :amount => amount,
      :currency => "usd",
      :card => params[:stripeToken],
      :description => "test payment")
    erb :thanks
  else
    redirect "/"
  end
end