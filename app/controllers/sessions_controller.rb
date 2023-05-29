class SessionsController < ApplicationController
  def new
    @user = current_user
    @karaoke = Karaoke.find(params[:karaoke_id])
    @session = Session.new(@user, @karaoke)
  end
end
