class StaticPagesController < ApplicationController
  def home
    flickr = Flickr.new
    
    @photos = flickr.people.getPublicPhotos({ user_id: params[:user_id] }) if params[:commit]
  end
end
