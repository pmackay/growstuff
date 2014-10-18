class Api::V1::CropsController < ApplicationController

  # GET /api/v1/crops
  def index
    @sort = params[:sort]
    if @sort == 'alpha'
      # alphabetical order
      @crops = Crop.includes(:scientific_names, {:plantings => :photos}).paginate(:page => params[:page])
    else
      # default to sorting by popularity
      @crops = Crop.popular.includes(:scientific_names, {:plantings => :photos}).paginate(:page => params[:page])
    end
  end

end
