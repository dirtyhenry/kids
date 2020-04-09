# frozen_string_literal: true

module Jekyll
  # A tag handling {% spotify playlist_id playlist_author %}
  # Example: {% spotify 6yt7RQR9MBtuCd3gjTuOuw guiguilele %}
  class SpotifyTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      args = text.strip.split
      unless args.count == 2
        raise 'Spotify tag usage: {% spotify playlist_id playlist_user %}'
      end

      @playlist_id = args[0]
      @playlist_author = args[1]
    end

    def render(_context)
      <<~RENDERED_HTML
        <p>
          <a href="http://open.spotify.com/user/#{@playlist_author}/playlist/#{@playlist_id}">
            écouter sur Spotify
          </a>
        </p>
      RENDERED_HTML
    end
  end
end

Liquid::Template.register_tag('spotify', Jekyll::SpotifyTag)
