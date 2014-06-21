module Spotify
  class Client

    # Methods for the Artists API
    #
    # @see https://developer.spotify.com/web-api/endpoint-reference/
    module Artists

      # Get an Artist
      #
      # @param artist [String] Artist ID.
      # @return [Sawyer::Resource] Hash representing information for a signle artist.
      # @see https://developer.spotify.com/web-api/get-artist/
      # @example
      #   Spotify.client.artist("0LcJLqbBmaGUft1e9Mm8HV")
      # @example
      #   Spotify.artist("0LcJLqbBmaGUft1e9Mm8HV")
      def artist(artist, options = {})
        get "artists/#{artist}", options
      end

      # Get Several Artists
      #
      # @param artists [Array] Artist IDs.
      # @return [Sawyer::Resource] Hash representing an array of Artists.
      # @see https://developer.spotify.com/web-api/get-several-artists/
      # @example
      #   Spotify.client.artists(["0oSGxfWSnnOXhD2fKuz2Gy", "3dBVyJ7JuOMt4GE9607Qin"])
      # @example
      #   Spotify.artists(["0oSGxfWSnnOXhD2fKuz2Gy", "3dBVyJ7JuOMt4GE9607Qin"])
      def artists(artists, options = {})
        get "artists/?ids=#{artists.join(",")}", options
      end

      # Get an Artist's Albums
      #
      # @param artist [String] Artist ID.
      # @return [Sawyer::Resource] Hash represent an array of artist albums.
      # @see https://developer.spotify.com/web-api/get-artists-albums/
      # @example
      #   Spotify.client.artist_albums("0oSGxfWSnnOXhD2fKuz2Gy")
      # @example
      #   Spotify.artist_albums("0oSGxfWSnnOXhD2fKuz2Gy")
      def artist_albums(artist, options = {})
        get "artists/#{artist}/albums", options
      end

      # Get an Artist's Top Tracks
      #
      # @param artist [String] ArtistID.
      # @param options [Hash] Optional parameters.
      # @option options [String] :country ISO 3166-1 alpha-2 country code.
      # @see https://developer.spotify.com/web-api/get-artists-top-tracks/
      # @example
      #   Spotify.client.artist_top_tracks("0oSGxfWSnnOXhD2fKuz2Gy")
      # @example
      #   Spotify.artist_top_tracks("0oSGxfWSnnOXhD2fKuz2Gy")
      def artist_top_tracks(artist, options = {})
        get "artists/#{artist}/top-tracks", options
      end

    end
  end
end
