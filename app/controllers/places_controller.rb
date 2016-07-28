class PlacesController < ApplicationController

  def index
      @places = Place.all.page(params[:page]).per(10)
  end

  def new
  end

end
