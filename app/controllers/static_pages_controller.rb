class StaticPagesController < ApplicationController
  def home
    flickr = Flickr.new

      @photos = flickr.people.getPublicPhotos({ user_id: params[:user_id] }) if params[:commit]
    rescue
      flash[:alert] = "Couldn't find the user"
      @user_id = params[:user_id]
      redirect_to root_url(user_id: params[:user_id])
  end
end
