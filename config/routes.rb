Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
  	 post "/get_details"  => "payments#get_details"
  end

end
