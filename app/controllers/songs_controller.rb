class SongsController < ApplicationController
  def index
    @bands = Band.all
    @original = Song.where(style_id: 1)
    @cover = Song.where(style_id: 2)
  end

  def search
    select_band_array if params[:band].present?
    select_expert_array if params[:expert].present?
    @songs = Song.all
    @songs = @search_band.sort if @search_band.present?
    @songs = (@search_band & @search_expert).sort if @search_expert.present?
  end

  private

  def select_band_array
    split_band = params[:band]
    @search_band =[]
    split_band.each do |band|
      @search_band += Song.where('band_id LIKE(?)', "%#{band}%")
    end
  end

  def select_expert_array
    split_expert = params[:expert]
    @search_expert =[]
    split_expert.each do |expert|
      @search_expert += Song.where('expert LIKE(?)', "%#{expert}%")
    end
  end
end
