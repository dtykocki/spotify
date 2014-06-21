require 'helper'

describe Spotify::Client::Albums do
  describe ".album" do
    it "returns the album by ID" do
      album = Spotify.client.album("0sNOF9WDwhWunNAHPD3Baj")
      expect(album.id).to eq("0sNOF9WDwhWunNAHPD3Baj") 
    end
  end

  describe ".albums" do
    it "returns all albums by ID" do
      obj = Spotify.client.albums(["41MnTivkwTO3UUJ8DrqEJJ", "6JWc4iAiJ9FjyK0B59ABb4"])
      expect(obj.albums.count).to eq(2)
    end
  end

  describe ".album_tracks" do
    it "returns all tracks for the given album" do
      response = Spotify.client.album_tracks("0sNOF9WDwhWunNAHPD3Baj")
      expect(response.items.count).to be > 0
    end
  end
end
