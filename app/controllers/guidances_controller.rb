class GuidancesController < ApplicationController

  def home
  end

  def index
    @q = Guidance.ransack(params[:q])
    @guidances = @q.result
    @mainsurf_points = SurfPoint.all.order("id ASC").limit(3)
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
    @mainsurf_points = SurfPoint.all.order("id ASC")
    if @guidance.save
      save_child_and_grandchild_data(params[:child_id], params[:grandchild_id])
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def guidance_params
    params.require(:guidance).permit(:style_id, :price, :amount, :surf_point_id).merge(guide_id: current_guide.id)
  end

  def save_child_and_grandchild_data(child_id, grandchild_id)
    return unless child_id.present? && grandchild_id.present?
  
    child_surf_point = SurfPoint.find(child_id)
    grandchild_surf_point = SurfPoint.find(grandchild_id)
  
    # 親データの保存に成功した後、子データと孫データを関連付けて保存する
    @guidance.update(child_surf_point: child_surf_point, grandchild_surf_point: grandchild_surf_point)
  end

end
