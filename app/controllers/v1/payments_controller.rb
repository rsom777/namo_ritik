class V1::PaymentsController < V1::ApplicationController
	protect_from_forgery
	
	def get_details
		card_type = params[:type].downcase
		amount = params[:amount]
		currency = params[:currency]
		card_number = params[:card][:number]
		card_expirationMonth = params[:card][:expirationMonth]
		card_expirationYear = params[:card][:expirationYear]
		cvv = params[:card][:cvv]

		if (card_type == 'creditcard'|| card_type == 'debitcard')
			if (card_number.size ==16)
				if (cvv.size == 3)

					authorization_code = SecureRandom.hex(12)
					time = Time.now.strftime("%Y-%m-%d %H:%M:%S")

					Payments.create_new(card_type,amount,currency,card_number,card_expirationMonth,card_expirationYear,cvv,authorization_code,time)

					render json: {"amount":amount,"currency":currency,"type":card_type, "card":{"number":card_number},"status": "success",authorization_code: authorization_code ,time: time},status: 200

				else
					render json: {"message": "Please enter valid cvv number","status": "error"},status: 401 and return
				end
			else
				render json: {"message": "Please enter valid card number","status": "error"},status: 401 and return
			end
		else
			render json: {"message": "Please enter valid card name","status": "error"},status: 401 and return
		end			

	end
end
