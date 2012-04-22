Stripe Sinatra Example
==========

A very simple but working example with the Stripe APIs.
This app lets you charge any credit card any amount you want and have the funds deposited in your Stripe account. Not bad for less than 100 lines of code.

What you'll need
------------

* A Stripe account. You can signup at http://stripe.com
* [Sinatra](http://www.sinatrarb.com/)
* The [Stripe gem](http://rubygems.org/gems/stripe)

Configuration
------------

* Fork or download.
* Get your API keys from the [API Keys](https://manage.stripe.com/#account/apikeys) page on stripe.com.
* Change the API key on line 5 of in app.rb:

        Stripe.api_key = "STRIPE_API_PRIVATE_KEY"

* Change the API key on line 7 of views/form.erb:

        Stripe.setPublishableKey('PUBLISHABLE_KEY');
* Run your app with `ruby app.rb` (or `shotgun app.rb` if using [shotgun](https://rubygems.org/gems/shotgun)), click `Submit Payment`, and you should see your charge registered on [the stripe dashboard](https://manage.stripe.com/#test/dashboard).

By default this form will bill the stripe test credit card `4242424242424242`.
You can do all kind of cool stuff with these APIs. Check out [the official docs](https://stripe.com/api/docs).

To-do
------------

* Check for the response code and report that to the user