module Spotify
  class Client

    # Methods for the Search API
    #
    # @see https://developer.spotify.com/web-api/search-item/
    module Search

      # Search Albums
      #
      # @param term [String] Search keyword.
      # @return [Sawyer::Resource] Hash representing the set of albums matching the search term.
      # @example
      #   Spotify.client.search_albums("colony")
      # @example
      #   Spotify.search_albums("colony")
      def search_albums(term, options = {})
        search term, :album, options
      end

      # Search Artists.
      #
      # @param term [String] Search term keyword.
      # @return [Sawyer::Resource] Hash representing the set of artists matching the search term.
      # @example
      #   Spotify.client.search_artists("in flames")
      # @example
      #   Spotify.search_artists("in flames")
      def search_artists(term, options = {})
        search term, :artist, options
      end

      # Search Tracks.
      #
      # @param term [String] Search term keyword.
      # @return [Sawyer::Resource] Hash representing the set of tracks matching the search term.
      # @example
      #   Spotify.client.search_tracks("colony")
      # @example
      #   Spotify.search_tracks("colony")
      def search_tracks(term, options = {})
        search term, :track, options
      end

      private

      # Nothing to see here, move along
      def search(term, type, options = {})
        get "search?q=#{URI::Parser.new.escape(term)}&type=#{type.to_s}", options
      end

    end
  end
end
