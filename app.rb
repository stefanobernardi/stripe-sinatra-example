require 'rubygems'
require 'sinatra'
require 'stripe'

set :views, File.dirname(__FILE__) + "/views"

def is_number?(i)
  true if Float(i) rescue false
end

get "/" do
  erb :form
end

get "/pay" do
  if is_number?(params[:amount].to_f)
    amount = ((params[:amount].to_f)*100).to_i
    Stripe.api_key = "your_test_API"
    @charge = Stripe::Charge.create(
      :amount => amount,
      :currency => "usd",
      :card => params[:stripeToken],
      :description => "test payment")
    erb :thanks
  else
    redirect "/pay"
  end
end