# Spotify

[![Gem Version](https://travis-ci.org/dtykocki/spotify.svg?branch=master)](https://travis-ci.org/dtykocki/spotify.svg?branch=master)

A simple ruby wrapper for Spotify's Web API. ( https://developer.spotify.com/web-api/ )

## Installation

Add this line to your application's Gemfile:

    gem 'spotify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spotify

## Usage

```ruby
artists = Spotify.search_artists "trivium"

artist = artists.first
artist.name   #=> "Trivium"
artist.id     #=> "278ZYwGhdK6QTzE3MFePnP"

albums = Spotify.search_albums "vengeance falls"

album = albums.first
album.name  #=> "Vengeance Falls (Special Edition)"
album.id    #=> "1hamGtmqitOROTKc0yNhow"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/spotify/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2014 Doug Tykocki

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

