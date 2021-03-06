require "spotify/version"
require "spotify/client"

module Spotify
  class << self
    def client
      @client = Client.new
      @client
    end

    private

    def method_missing(method_name, *args, &block)
      return super unless client.respond_to?(method_name)
      client.send(method_name, *args, &block)
    end

  end
end
