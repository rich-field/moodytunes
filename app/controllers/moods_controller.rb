class MoodsController < ApplicationController
  def index
    @moods = Mood.all
  end

  def show
    @mood = Mood.where(:name => params[:id].capitalize).first
    access_token = session[:at]
    access_token_secret = session[:ats]
    # raise params.inspect
      if access_token and access_token_secret
        rdio = Rdio.new(["wckdv2pub6av9q5fgs22br49", "e8M57wnN4h"],
                    [access_token, access_token_secret])

        @currentUser = rdio.call('currentUser')['result']
        @playlists = rdio.call('getPlaylists')['result']['owned']
        # raise params.inspect
      else
        redirect_to user_login_path
      end
    end
end