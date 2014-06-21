module Spotify 
  class Client

    # Methods for the Albums API
    #
    # @see https://developer.spotify.com/web-api/endpoint-reference/
    module Albums

      # Get an Album
      #
      # @param album [String] Album ID.
      # @return [Sawyer::Resource] Hash representing catalog information for the album.
      # @see https://developer.spotify.com/web-api/get-album/
      # @example
      #   Spotify.client.album("0sNOF9WDwhWunNAHPD3Baj")
      # @example
      #   Spotify.album("0sNOF9WDwhWunNAHPD3Baj")
      def album(album, options = {})
        get "albums/#{album}", options
      end

      # Get Several Albums
      #
      # @param albums [Array] Album IDs.
      # @return [Sawyer::Resource] Hash representing an array of albums.
      # @see https://developer.spotify.com/web-api/get-several-albums/
      # @example
      #   Spotify.client.albums(["0sNOF9WDwhWunNAHPD3Baj"])
      # @example
      #   Spotify.albums(["0sNOF9WDwhWunNAHPD3Baj"])
      def albums(albums, options = {})
        get "albums/?ids=#{albums.join(",")}", options
      end

      # Get an Album's Tracks
      # 
      # @param album [String] Album ID.
      # @return [Sawyer::Resource] Hash representing an array of an album's tracks.
      # @see https://developer.spotify.com/web-api/get-albums-tracks/
      # @example
      #   Spotify.client.album_tracks("0sNOF9WDwhWunNAHPD3Baj")
      # @example
      #   Spotify.album_tracks("0sNOF9WDwhWunNAHPD3Baj")
      def album_tracks(album, options = {})
        get "albums/#{album}/tracks", options
      end

    end
  end
end
