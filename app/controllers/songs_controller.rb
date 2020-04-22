class SongsController < ApplicationController
  def index
    @bands = Band.all
    @original = Song.where(style_id: 1)
    @cover = Song.where(style_id: 2)
  end

  def search
    split_band = params[:band]
    return @songs = Song.all unless split_band
    @songs =[]
    split_band.each do |band|
      @songs += Song.where('band_id LIKE(?)', "%#{band}%")
    end
  end
end
