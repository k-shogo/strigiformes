require 'strigiformes/client/publisher'
module Strigiformes
  class Client
    include Publisher

    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    def initialize(options = {})
      options = self.class.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end
  end
end
