# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* git clone the repo and cd /{folder_name}
* Install ruby 2.3.4
* Install rails 5.1.6 or higher
* bundle exec rake db:create and bundle exec rake db:migrate
* bundle install
* rails server
* run localhost:3000/v1/get_details and in body pass
	*   {
		    "type":"creditCard",
		    "amount":"200",
		    "currency":"usd",
		    "card":
		        {
		        "number":"1234567812345678",
		        "expirationMonth":2,
		        "expirationYear":"2020",
		        "cvv":"123"
		        }
		}
	* Check "creditcard/debitcard" spelling
	* number should be 16 digits
	* cvv should be 3 digits
