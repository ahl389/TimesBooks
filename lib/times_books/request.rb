require 'rest-client'

module TimesBooks
  module Request
  
    def request(path, params)
      api_key = TimesBooks.configuration[:api_key]
      params = params.merge(:api_key=>api_key).to_query
      url = "#{path}?#{params}"
      result = RestClient.get(url) 
      
      parse(result)
    end

    def parse(result)
      hash = JSON.parse(result)
      return hash
    end
  end
end