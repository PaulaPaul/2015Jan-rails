require "stripe"
Stripe.api_key = "sk_test_o805M12t09E78dxlfiLT1Ggl"

result  = Stripe::Charge.create(
  :amount => 400,
  :currency => "usd",
  :source => {
    :number => "4242424242424242",
    :exp_month => 3,
    :exp_year => 2016,
    :cvc => "314"
  },
  :description => "Charge for test@example.com"
)
puts result