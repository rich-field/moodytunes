require 'rdio_api'

class PlaylistController < ApplicationController
  def index
    # Initialize new Rdio Client
    @client = RdioApi.new(:consumer_key => :wckdv2pub6av9q5fgs22br49, :consumer_secret => :e8M57wnN4h)
    @playlist = @client.search(:query => "MF Doom", :types => "Albums")
  end
end