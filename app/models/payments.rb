class Payments < ApplicationRecord

	def self.create_new (card_type,amount,currency,card_number,card_expirationMonth,card_expirationYear,cvv,authorization_code,time)

		Payments.create(:card_name => card_type,:amount => amount, :currency => currency, :card_number => card_number,:expiry_date => card_expirationMonth, :expiry_year => card_expirationYear, :cvv => cvv, :auth_code => authorization_code, :request_date => time)
	end
end
