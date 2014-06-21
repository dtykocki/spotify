require 'helper'

describe Spotify::Client::Artists do
  let(:first_id)  { "0oSGxfWSnnOXhD2fKuz2Gy" }
  let(:second_id) { "3dBVyJ7JuOMt4GE9607Qin" }

  describe ".artist", :vcr do
    it "returns a single artist by ID" do
      artist = Spotify.client.artist(first_id)
      expect(artist.id).to eq(first_id)
    end
  end

  describe ".artists", :vcr do
    it "returns a set of artists by their IDs" do
      response = Spotify.client.artists([first_id, second_id])
      expect(response[:artists].first.id).to eq first_id
      expect(response[:artists].last.id).to eq second_id
    end
  end

  describe ".artist_albums", :vcr do
    it "returns albums belonging to an artist by ID" do
      response = Spotify.client.artist_albums(first_id)
      expect(response.items.count).to be > 0
    end
  end

  describe ".artist_top_tracks", :vcr do
    it "returns the top tracks for the given artist" do
      response = Spotify.client.artist_top_tracks(first_id, country: 'US')
      expect(response.tracks.count).to be > 0
    end
  end
end
