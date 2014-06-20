require 'spotify/client'

describe Spotify::Client do
  describe ".create_authorization" do
    before do
      @client = Spotify::Client.new(client_id:      "94fc6fa2247d49b6a0e60b79f9bc9981", 
                                    client_secret:  "b459d67db952478386105ad793a0b093")
    end

    it "creates an API authorization" do
      authorization = @client.create_authorization
      expect(authorization).to_not be_nil
    end
  end
end
