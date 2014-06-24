require 'helper'

describe Spotify::Client::Search do
  describe ".search_albums", :vcr do
    it "should search albums" do
      results = Spotify.client.search_albums 'vengeance falls'
      expect(results.albums).to_not be_nil
    end
  end

  describe ".search_artists", :vcr do
    it "should search artists" do
      results = Spotify.client.search_artists 'trivium'
      expect(results.artists).to_not be_nil
    end
  end

  describe ".search_tracks", :vcr do
    it "should search tracks" do
      results = Spotify.client.search_tracks 'strife'
      expect(results.tracks).to_not be_nil
    end
  end
end
