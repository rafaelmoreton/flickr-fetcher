class StaticPagesController < ApplicationController
  def home
  end

  def fetch_photos
    flickr = Flickr.new
    @photos = flickr.people.getPublicPhotos({ user_id: params[:user_id] })
  end
end
