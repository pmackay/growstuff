class Api::V1::SeedsController < ApplicationController

  # GET api/v1/seeds
  def index
    @owner = Member.find_by_slug(params[:owner])
    if @owner
      @seeds = @owner.seeds.includes(:owner, :crop).paginate(:page => params[:page])
    else
      @seeds = Seed.includes(:owner, :crop).paginate(:page => params[:page])
    end
  end

end
