require 'helper'

describe Spotify::Client::Tracks do
  let(:first)   { "0eGsygTp906u18L0Oimnem" }
  let(:second)  { "1lDWb6b6ieDQ2xT7ewTC3G" }

  describe ".tracks", :vcr do
    it "returns a single track by ID" do
      track = Spotify.client.track(first)
      expect(track.id).to eq(first)
    end
  end

  describe ".tracks", :vcr do
    it "returns multiple tracks by their IDs" do
      response = Spotify.client.tracks([first, second])
      expect(response.tracks.count).to be > 0
    end
  end
end
