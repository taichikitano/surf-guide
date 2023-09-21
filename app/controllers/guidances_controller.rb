class GuidancesController < ApplicationController

  def home
  end

  def guide_home
  end

  def new
   @guidance = Guidance.new
   @mainsurf_points = SurfPoint.all.order("id ASC").limit(3)
  end

  def search
    item = SurfPoint.find(params[:id])
    children_item = item.children
    render json:{ item: children_item }
  end

end
