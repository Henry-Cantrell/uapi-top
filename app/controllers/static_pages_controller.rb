require 'flickr'

class StaticPagesController < ApplicationController
    def index
        @photos = nil
        flickr = Flickr.new 
        unless params[:id].blank?
            @photos = flickr.photos.getRecent(id: params[:id])
        end
    end
end
