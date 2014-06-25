require 'helper'

describe Spotify::Client::Search do
  describe ".search_albums", :vcr do
    it "should search albums" do
      albums = Spotify.client.search_albums 'vengeance falls'

      expect(albums.count).to be > 0
      expect(albums).to be_kind_of Array
    end
  end

  describe ".search_artists", :vcr do
    it "should search artists" do
      artists = Spotify.client.search_artists 'trivium'

      expect(artists.count).to be > 0
      expect(artists).to be_kind_of Array
    end
  end

  describe ".search_tracks", :vcr do
    it "should search tracks" do
      tracks = Spotify.client.search_tracks 'strife'

      expect(tracks.count).to be > 0
      expect(tracks).to be_kind_of Array
    end
  end
end
