module Spotify
  class Client

    # Methods for the Tracks API.
    #
    # @see https://developer.spotify.com/web-api/endpoint-reference/
    module Tracks

      # Get a Track.
      #
      # @param track [String] Track ID.
      # @return [Sawyer::Resource] Hash representing information for a single track.
      # @see https://developer.spotify.com/web-api/get-track/
      # @example
      #   Spotify.client.track("0eGsygTp906u18L0Oimnem")
      # @example
      #   Spotify.track("0eGsygTp906u18L0Oimnem")
      def track(track, options = {})
        get "tracks/#{track}", options
      end

      # Get Several Tracks.
      #
      # @param tracks [Array] Track IDs.
      # @return [Sawyer::Resource] Hash representing an array of tracks.
      # @see https://developer.spotify.com/web-api/get-several-tracks/
      # @example
      #   Spotify.client.tracks(["0eGsygTp906u18L0Oimnem", "1lDWb6b6ieDQ2xT7ewTC3G"])
      # @example
      #   Spotify.tracks(["0eGsygTp906u18L0Oimnem", "1lDWb6b6ieDQ2xT7ewTC3G"])
      def tracks(tracks, options = {})
        get "tracks?ids=#{tracks.join(",")}", options
      end

    end
  end
end
