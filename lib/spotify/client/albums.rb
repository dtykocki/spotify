module Spotify 
  class Client
    module Albums

      def album(album, options = {})
        get "albums/#{album}", options
      end

      def albums(albums, options = {})
        get "albums/?ids=#{albums.join(",")}", options
      end

    end
  end
end
