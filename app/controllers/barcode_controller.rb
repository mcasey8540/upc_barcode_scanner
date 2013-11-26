require 'net/http';
require 'json';


class BarcodeController < ApplicationController


	def index

	end

	def search_brand

		host = "api.simpleupc.com"
		path = "/v1.php"

		# An example query for FetchProductByUPC method
		request = {
		    "auth" => 'h5OcDMew9G82bTt1TFBZTfDO930AeHlq',
		    "method" => 'FetchProductByUPC',
		    "params" => {"upc" => "#{params[:upc]}"}
		}

		json = request.to_json()

		response = Net::HTTP.start(host) { |http|
		    http.post(path, json, initheader = {'Content-Type' =>'text/json'})
		}

		output = response.body

		render json: output
	end

	def search_nutrition
		host = "api.simpleupc.com"
		path = "/v1.php"

		# An example query for FetchNutritionFactsByUPC method
		request = {
		    "auth" => 'h5OcDMew9G82bTt1TFBZTfDO930AeHlq',
		    "method" => 'FetchNutritionFactsByUPC',
		    "params" => {"upc" => "#{params[:upc]}"}
		}

		json = request.to_json()

		response = Net::HTTP.start(host) { |http|
		    http.post(path, json, initheader = {'Content-Type' =>'text/json'})
		}

		output = response.body

		render json: output		

	end

	def nutritionix

	end

end	

