class SongsController < ApplicationController
  def index
    @bands = Band.all
  end
end
