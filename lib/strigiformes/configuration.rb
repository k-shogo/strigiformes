module Strigiformes
  module Configuration

    VALID_OPTIONS_KEYS = [
      :access_key, :secret_key
    ].freeze

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
      self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}) do |options, key|
        options.merge!(key => send(key))
      end
    end

  end
end
