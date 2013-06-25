require 'voicearchive/client'
module Voicearchive
  class CustomerClient < Client
    def get_customers(params={})
      params = set_simple_endpoint_default_values(params)
      response = call('customer', params)
      JSON.parse(response.body)
    end
    def get_customer(id, params={})
      params = set_simple_endpoint_default_values(params)
      response = call("customer/#{id}", params)
      JSON.parse(response.body)
    end
  end
end