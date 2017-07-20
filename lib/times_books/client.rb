module TimesBooks
  class Client
    include TimesBooks::Request
    include TimesBooks::List
    
    attr_reader :api_key

    def initialize(options = {})
      fail(ArgumentError, "Options hash required.") unless options.is_a?(Hash)
      @api_key    = options[:api_key] || TimesBooks.configuration[:api_key]
    end
  end
end