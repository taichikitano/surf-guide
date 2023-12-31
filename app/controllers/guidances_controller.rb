class GuidancesController < ApplicationController

  def home
  end

  def index
    @q = Guidance.ransack(params[:q])
    @guidance = @q.result
  end

  def new
    authenticate_guide!
    @guidance = Guidance.new
    @mainsurf_points = SurfPoint.all.order("id ASC").limit(3)
  end

  def search
    item = SurfPoint.find(params[:id])
    children_item = item.children
    render json:{ item: children_item }
  end

  def create
    @guidance = Guidance.new(guidance_params)
    if @guidance.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def guidance_params
    params.require(:guidance).permit(:style_id, :price, :amount, :surf_point_id).merge(guide_id: current_guide.id)
  end

end
