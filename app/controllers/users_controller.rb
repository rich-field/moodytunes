class UsersController < ApplicationController
  # before_action :check_if_logged_in, :except => [:new, :create]
  # before_action :check_if_admin, :only => [:index]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  # def destroy
  #   @user = User.find params[:id]
  #   @user.destroy
  #   redirect_to root_path
  # end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to root_path
  end

  def home
  #   session.clear
  #   # begin the authentication process
  #   rdio = Rdio.new(["wckdv2pub6av9q5fgs22br49", "e8M57wnN4h"])
  #   callback_url = (URI.join request.url, '/callback').to_s
  #   url = rdio.begin_authentication(callback_url)
  #   # save our request token in the session
  #   session[:rt] = rdio.token[0]
  #   session[:rts] = rdio.token[1]
  #   # go to Rdio to authenticate the app

  #   # get the state from cookies and the query string
  #   request_token = session[:rt]
  #   request_token_secret = session[:rts]
  #   verifier = params[:oauth_verifier]
  #   # make sure we have everything we need

  #     # exchange the verifier and request token for an access token
  #     # rdio = Rdio.new(["wckdv2pub6av9q5fgs22br49", "e8M57wnN4h"],
  #                     # [request_token, request_token_secret])
  #     rdio.complete_authentication(verifier)
  #     # save the access token in cookies (and discard the request token)
  #     session[:at] = rdio.token[0]
  #     session[:ats] = rdio.token[1]
  #     session.delete(:rt)
  #     session.delete(:rts)
  #     # go to the home page
  #     redirect_to('/')
  #   else
  #   # we're missing something important
  #     redirect_to('/logout')
  #   end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :user_id, :first_name, :last_name, :email)
  end
end