require "spotify/version"
require "spotify/client"

module Spotify
  class << self
    def client
      @client = Client.new
      @client
    end
  end
end
