Stripe Sinatra Example
==========

A very simple but working example with the Stripe APIs.
This app lets you charge any credit card any amount you want and have the funds deposited in your Stripe account. Not bad for less than 40 lines of code.

What you'll need
------------

* A Stripe account. Stripe is still in private beta, but you can signup on http://stripe.com

Configuration
------------

* Fork or download.
* Change the API keys in app.rb:

        Stripe.api_key = "your_test_API"

* Change the API key in views/form.erb      

        pubKey: "your_publishable_key"


And you're done.
You can do all kind of cool stuff with these APIs. Check out the docs at https://stripe.com/api/docs 

To-do
------------

* Check for the response code and report that to the user