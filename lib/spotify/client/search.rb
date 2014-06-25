module Spotify
  class Client

    # Methods for the Search API
    #
    # @see https://developer.spotify.com/web-api/search-item/
    module Search

      # Search Albums
      #
      # @param term [String] Search keyword.
      # @return [Array<Sawyer::Resource>] Array representing the set of albums matching the search term.
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
      # @return [Array<Sawyer::Resource>] Array representing the set of artists matching the search term.
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
      # @return [Array<Sawyer::Resource>] Array representing the set of tracks matching the search term.
      # @example
      #   Spotify.client.search_tracks("colony")
      # @example
      #   Spotify.search_tracks("colony")
      def search_tracks(term, options = {})
        search term, :track, options
      end

      private

      def search(term, type, options = {})
        items = []
        get "search?q=#{URI::Parser.new.escape(term)}&type=#{type.to_s}", options do |data|
          case type 
          when :album
            items = data.albums.items
          when :artist
            items = data.artists.items
          when :track
            items = data.tracks.items
          end
        end
        items
      end

    end
  end
end
