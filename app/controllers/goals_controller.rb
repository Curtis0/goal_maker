class GoalsController < ApplicationController
  before_action :logged_in_user

  def new
    @goal = Goal.new
    #@milestone = Milestone.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to new_milestone_path # previously @goal
    else
      flash[:danger] = "Error"
      render 'new'
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end



  private

  def goal_params
    params.require(:goal).permit(
      :name,
      :description,
      :finish_by,
      :accomplished
      )
  end

end
