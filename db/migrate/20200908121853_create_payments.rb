class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments, :primary_key => :id,:id => false do |t|
    	t.integer 	:id 
    	t.string 	:card_name 
    	t.integer 	:amount
    	t.string 	:currency
    	t.string 	:card_number
    	t.string   	:expiry_date
    	t.string    :expiry_year
    	t.integer 	:cvv
    	t.string  	:auth_code
    	t.datetime 	:request_date
    end
  end
end
