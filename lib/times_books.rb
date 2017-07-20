require "times_books/version"
require "times_books/request"
require "times_books/client"

module TimesBooks
  class << self
    attr_accessor :options
  end
  
  self.options = {}
  
  def self.new(params = {})
     TimesBooks::Client.new(params)
  end
  
  def self.configure(params = {})
    fail(ArgumentError, "Options hash required.") unless params.is_a?(Hash)

    options[:api_key]    = params[:api_key]
    options
  end

  def self.configuration
    options
  end
end
