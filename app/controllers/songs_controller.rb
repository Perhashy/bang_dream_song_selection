class SongsController < ApplicationController
  def index
    @bands = Band.all
    @original = Song.where(style_id: 1)
    @cover = Song.where(style_id: 2)
  end
end
