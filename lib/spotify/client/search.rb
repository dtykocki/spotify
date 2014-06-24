module Spotify
  class Client
    module Search

      def search_albums(term, options = {})
        search term, :album, options
      end

      def search_artists(term, options = {})
        search term, :artist, options
      end

      def search_tracks(term, options = {})
        search term, :track, options
      end

      private

      def search(term, type, options = {})
        get "search?q=#{URI::Parser.new.escape(term)}&type=#{type.to_s}", options
      end

    end
  end
end
