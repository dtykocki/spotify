require 'sawyer'
require 'pry'
require 'base64'

require "spotify/client/albums"

module Spotify
  class Client
    include Spotify::Client::Albums

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

    def get(url, options = {})
      response = agent.call(:get, url, {}, options)
      response.data
    end

    def post(url, options = {})
      reponse = agent.call(:post, url, {}, options)
    end
  end
end
