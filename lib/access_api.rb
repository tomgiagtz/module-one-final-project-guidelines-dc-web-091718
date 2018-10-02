require 'rest-client'

api_key = 'ebd1dbc8bf695423c209d37473578b0d'

series_id_list = ['STEO.ESRCU_HAK.Q']
#, 'STEO.ESRCU_ENC.Q', 'STEO.ESRCU_ESC.Q']

def send_request(url)
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
end

def get_data_from_api(api_address)
  send_request(api_address)
end

def create_api_address_list(series_id_list, api_key)
  series_id_list.map do |series_id|
    'http://api.eia.gov/series/?api_key=' + api_key + '&series_id=' + series_id
  end
end

def generate_data_for_api(series_id_list, api_key)
  create_api_address_list(series_id_list, api_key).map do |api_url|
    get_data_from_api(api_url)
  end
end

return_hash = generate_data_for_api(series_id_list, api_key)
return_hash[0]["series"][0]["data"].each do |period_price_array|
  Period.create(:name => period_price_array[0], :price => period_price_array[1], :region_id => 1)
end
