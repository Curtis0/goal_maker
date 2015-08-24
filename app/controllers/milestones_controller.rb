class MilestonesController < ApplicationController



  def new
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new(milestone_params)
    #@milestone.user = current_user
    # binding.pry # デバッグ用
    if @milestone.save
      redirect_to @milestone
    else
      flash[:danger] = "Error"
      render 'new'
    end
  end
  
  def show
    @milestone = Milestone.find(params[:id])
  end

  private
  
  def milestone_params
    params.require(:milestone).permit(
      :name,
      :description,
      :finish_by
      )
  end

end
