class SongsController < ApplicationController
  def index
    @bands = Band.all
    @songs = Song.all
  end
end
