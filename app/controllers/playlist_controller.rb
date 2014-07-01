require 'rdio'

# :consumer_key => :wckdv2pub6av9q5fgs22br49, :consumer_secret => :e8M57wnN4h

class PlaylistController < ApplicationController
  def songs
    # Initialize new Rdio Client
  access_token = session[:at]
  access_token_secret = session[:ats]
  if access_token and access_token_secret
    rdio = Rdio.new(["wckdv2pub6av9q5fgs22br49", "e8M57wnN4h"],
                    [access_token, access_token_secret])

    @currentUser = rdio.call('currentUser')['result']
    @playlists = rdio.call('getPlaylists')['result']['owned']
    end
  end

  def login
    session.clear
    # begin the authentication process
    rdio = Rdio.new(["wckdv2pub6av9q5fgs22br49", "e8M57wnN4h"])
    callback_url = (URI.join request.url, '/callback').to_s
    url = rdio.begin_authentication(callback_url)
    # save our request token in the session
    session[:rt] = rdio.token[0]
    session[:rts] = rdio.token[1]
    # go to Rdio to authenticate the app
    redirect_to url
  end

  def callback
    # get the state from cookies and the query string
    request_token = session[:rt]
    request_token_secret = session[:rts]
    verifier = params[:oauth_verifier]
    # make sure we have everything we need
    if request_token and request_token_secret and verifier
      # exchange the verifier and request token for an access token
      rdio = Rdio.new(["wckdv2pub6av9q5fgs22br49", "e8M57wnN4h"],
                      [request_token, request_token_secret])
      rdio.complete_authentication(verifier)
      # save the access token in cookies (and discard the request token)
      session[:at] = rdio.token[0]
      session[:ats] = rdio.token[1]
      session.delete(:rt)
      session.delete(:rts)
      # go to the home page
      redirect_to('/')
    else
    # we're missing something important
      redirect_to('/logout')
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end
end