require 'sawyer'
require 'pry'
require 'base64'

require "spotify/client/albums"
require "spotify/client/artists"
require "spotify/client/tracks"

module Spotify

  # Client for the Spotify API
  #
  # @see https://developer.spotify.com/
  class Client
    include Spotify::Client::Albums
    include Spotify::Client::Artists
    include Spotify::Client::Tracks

    def initialize(opts={})
      @client_id = opts[:client_id]
      @client_secret = opts[:client_secret]
    end

    def create_authorization
      header = Base64.encode64("#{@client_id}:#{@client_secret}").delete("\r\n")
      response = agent.call(:post, "/api/token", 'grant_type=client_credentials', headers: { :authorization => "Basic #{header}" })
    end

    def agent
      @agent ||= Sawyer::Agent.new(endpoint_url)
    end

    def endpoint_url
      "https://api.spotify.com/v1/"
    end

    # Makes an HTTP GET request.
    #
    # @param url [String] The path, relative to {#endpoint_url}.
    # @param options [Hash] Query and header parameters for the request.
    # @return [Sawyer::Resource]
    def get(url, options = {})
      request :get, url, parse_query(options)
    end

    # Makes an HTTP POST request.
    #
    # @param url [String] The path, relative to {#endpoint_url}.
    # @param options [Hash] Body and header information for the request.
    # @return [Sawyer::Resource]
    def post(url, options = {})
      request :post, url, options
    end

    private

    def parse_query(options)
      opts = { query: options }
    end

    def request(method, url, options = {}, data = {})
      response = agent.call(method, url, data, options)
      response.data
    end
  end
end
