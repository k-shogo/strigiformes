require "strigiformes/version"
require "strigiformes/configuration"
require 'strigiformes/client'

module Strigiformes
  extend Configuration

  # Alias for ShingakunetOauthClient::Client.new
  def self.client(options = {})
    Client.new(options)
  end

  # Delegate to {ShingakunetOauthClient::Client}
  def self.method_missing(method_name, *args, &block)
    return super unless client.respond_to?(method_name)
    client.send(method_name, *args, &block)
  end

  # Delegate to {ShingakunetOauthClient::Client}
  def self.respond_to?(method_name, include_private = false)
    return client.respond_to?(method_name, include_private) || super
  end
end
